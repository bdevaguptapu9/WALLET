package com.BC.myapp;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BC.DBAccess.DBConnection;
import com.BC.bean.Meta;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	DBConnection db = new DBConnection();
	//String email = "chaiswap@gmail.com";
		
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(/*Locale locale, Model model*/HttpServletRequest req) {
  	/*logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();z
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
	//	return "reminder";
		req.getSession().invalidate();
		System.out.println(req.getSession(false));
		return "front";
	}
	
	@RequestMapping(value = "/signuplogin", method = RequestMethod.GET)
	public String signuplogin(HttpServletRequest req) {
		req.getSession().invalidate();
		System.out.println(req.getSession(false));
		return "sign-up-in-page";
	}
	
	
	
	@RequestMapping(value = "/reminder", method = RequestMethod.GET)
	public String reminder(@RequestParam int urlid, Model model) {
		model.addAttribute("urlid",urlid);
		return "reminder";
	}
	@RequestMapping(value = "/getReminderName", method = RequestMethod.POST)
	@ResponseBody
	public String getReminderName(@RequestParam int urlid) {
		System.out.println("getReminder("+urlid+")");
		try{
		return db.getReminderName(urlid);
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
	}
	@RequestMapping(value="/siteDetails", method = RequestMethod.POST)
	@ResponseBody
	public String siteDetails(@RequestParam String url){
		System.out.println("siteDetails("+url+")");
		try{
		Example1 jsoup = new Example1();
		String s = jsoup.SiteDetails(url); 
		System.out.println("hello" + s);
		return s;
		}catch(Exception e){
			e.printStackTrace();
			return "nodata";
		}
	}
	@RequestMapping(value = "/saveReminder", method = RequestMethod.POST)
	@ResponseBody
	public int saveReminder(@RequestParam int urlid, @RequestParam String time) {
		System.out.println("saveReminder("+urlid+","+time+")");
		try{
		return db.saveReminder(urlid,time);
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	@RequestMapping(value = "/viewReminder", method = RequestMethod.POST)
	@ResponseBody
	public String viewReminder(@RequestParam int urlid) {
		System.out.println("viewReminder("+urlid+")");
		try{
		return db.viewReminder(urlid);
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
	}
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	@ResponseBody
	public String signup(@RequestParam String uname, @RequestParam String email, @RequestParam String pwd,
			@RequestParam String T1, @RequestParam String T2, HttpServletRequest req){
		System.out.println("inside signup() "+uname + "  "+email +" "+pwd+" "+T1+" "+T2);
		String status = "";
		try{
		if(db.signupInsert(uname, email, pwd, T1, T2)>0){
			status = "success";
			HttpSession session = req.getSession(true);
			session.setAttribute("email", email);
		}else{
			status = "failure";
		}
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
		System.out.println("status - "+status);
		return status;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam String email, @RequestParam String pwd,
			HttpServletRequest req){
		System.out.println("inside login() "+email + " "+pwd);
		String status = "";
		try{
		if(db.signIn(email, pwd)>0){
			status = "success";
			HttpSession session = req.getSession(true);
			session.setAttribute("email", email);
		}else{
			status = "failure";
		}
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
		System.out.println("status - "+status);
		return status;
	}
	
	@RequestMapping("/loginsuccess")
	public String authenticate(HttpServletRequest request){
		try{
		 if((null != request.getSession(false))&&(null != request.getSession(false).getAttribute("email"))){
			 System.out.println(request.getSession(false).getAttribute("email"));
			 return "home1";	 
		 }
		 else{
			 return "front"; 
		 }
		}catch(Exception e){
			e.printStackTrace();
			return "sign-up-in-page";
		}
	}
	
	@RequestMapping("/extnCall")
	@ResponseBody
	public String addSiteExtnCall(@RequestParam String url, HttpServletRequest req){
		System.out.println("url"+url);
		
		//req.getSession(false).invalidate();
		//System.out.println("email: " + req.getSession(false).getAttribute("email"));
		try{
			if((null != req.getSession(false))&&(null != req.getSession(false).getAttribute("email"))){
				//addSite
				return "success";
			}else{
				return "unauth";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "unauth";
		}
	}
	
	@RequestMapping("/loginfailure")
	public String authenticatefailure(HttpServletRequest request){
		return "sign-up-in-page";
	}
	
	@RequestMapping("/addsite")
	@ResponseBody
	public String addsite(@RequestParam String url, @RequestParam String type, @RequestParam String title, @RequestParam String image, @RequestParam String description, @RequestParam String favicon,HttpServletRequest req){
		System.out.println("addsite() "+ url + " "+type+ " "+title+ " "+image+ " "+description+ " "+favicon);
		Meta meta = new Meta();
		meta.setUrl(url);
		meta.setType(type);
		meta.setTitle(title);
		meta.setImage(image);
		meta.setDescription(description);
		meta.setFavicon(favicon);
			try {
				 if(null != req.getSession(false).getAttribute("email")){
				  String semail = (String) req.getSession(false).getAttribute("email");
				  return db.addSite(meta,semail)+"";	 
					                              }
				 else{
					 	System.out.println("unauth addSite");
						return "-1";
					 }			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "-1";
			}
			
		
		
	}
	
	
	@RequestMapping("/getsite")
	@ResponseBody
	public String getSite(HttpServletRequest req){
		try{
			
			if(null != req.getSession(false).getAttribute("email")){
				  String semail = (String) req.getSession(false).getAttribute("email");
					return db.getSite(semail);
					                              }
				 else{
					 	System.out.println("unauth getSite");
						return "failure";
					 }			
			
		
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}		
	}
	
	@RequestMapping("/getProfile")
	@ResponseBody
	public String getProfile(HttpServletRequest req){
		try{
			
			if(null != req.getSession(false).getAttribute("email")){
				  String semail = (String) req.getSession(false).getAttribute("email");
				  return db.getProfile(semail);
					                         }
				 else{
					 	System.out.println("unauth getProfile");
						return "failure";
					 }			
			

		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
	}
	
	@RequestMapping("/updateProfile")
	@ResponseBody
	public int updateProfile(@RequestParam String name, @RequestParam String password, @RequestParam String toC1,
			@RequestParam String toC2,HttpServletRequest req){
		try{			
			
			if(null != req.getSession(false).getAttribute("email")){
				  String semail = (String) req.getSession(false).getAttribute("email");
				  return db.updateProfile(semail,name,password,toC1,toC2);
					                         }
				 else{
					 	System.out.println("unauth updateProfile");
						return -1;
					 }	
	
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	
	@RequestMapping("/deletesite")
	@ResponseBody
	public int deleteSite(@RequestParam int urlid){
		try{
			return db.deleteSite(urlid);
		}catch (SQLException e){
			e.printStackTrace();
			return -1;
		}	
	}
	
	@RequestMapping("/updateFav")
	@ResponseBody
	public int updateFav(@RequestParam int urlid, @RequestParam String fav){
		try{
			System.out.println("urlid - "+urlid+" fav - "+fav);
			return db.updateFav(urlid,fav);
		}catch (SQLException e){
			e.printStackTrace();
			return -1;
		}	
	}
	
	@RequestMapping("/logout")
	@ResponseBody
	public String logout(HttpServletRequest request,HttpServletResponse response){
		try{
			if(null != request.getSession(false)){	
				request.getSession(false).invalidate();
				System.out.println(request.getSession(false));
			}
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
		
	}
	
	
	@RequestMapping("/addbirthday")
	@ResponseBody
	public int addbirthday(@RequestParam String name, @RequestParam String date, @RequestParam String dpurl
			                  ,HttpServletRequest req){
		try{			
			
			if(null != req.getSession(false).getAttribute("email")){
				  String semail = (String) req.getSession(false).getAttribute("email");
				  if(dpurl==""){
					  dpurl = "https://upload.wikimedia.org/wikipedia/commons/d/dd/Birthday_candles.jpg";
				  }
				  return db.addbirthday(semail,name,date,dpurl);
					                         }
				 else{
					 	System.out.println("unauth birthreq");
						return -1;
					 }	
	
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	
	
	
	
	
	/*public String addsite(@RequestParam String siteData){
		System.out.println("addsite()"+siteData);
		try{
			ObjectMapper om = new ObjectMapper();
			AddSite addSite = om.readValue(siteData, AddSite.class);
			if(db.addSite(addSite) > 0){
				return "success";
			}else{
				return "failure";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "failure";
		}
	}*/
}
