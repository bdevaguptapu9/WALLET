package com.meta.api;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.meta.api.Example1;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
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
	
	@RequestMapping(value = "/documentation", method = RequestMethod.GET)
	public String documentation() {
		return "documentation";
	}
	
	
	
	
	
	
	
	
}
