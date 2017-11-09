package com.BC.DBAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.codehaus.jackson.map.ObjectMapper;
import com.BC.bean.Meta;
import com.BC.bean.Profile;
import com.BC.bean.Reminder;

public class DBConnection {
	
	Connection con;
	
	public DBConnection(){	
		
	 try {
	        Class.forName ("oracle.jdbc.OracleDriver");
	        con = DriverManager.getConnection("jdbc:oracle:thin:@HIGHGARDEN-PC:1521:XE","system","Gameofthrones");
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public int signupInsert(String uname, String email, String pwd, String T1, String T2) throws SQLException{
		Statement st = con.createStatement();
		int i = st.executeUpdate("INSERT INTO SignUp(Name,EmailId,Password,TOC1,TOC2)" + " VALUES ('"+uname+"','"+email+"','"+pwd+"','"+T1+"','"+T2+"')");
		return i;
		
	}
	
	public String getReminderName(int urlid) throws Exception{
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select UURL from URLS where URLID='"+urlid +"'");
		if(rs.next()){
			return rs.getString("UURL");
		}
		return "failure";
	}
	
	public int saveReminder(int urlid, String time) throws Exception{
	//	DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm"); 
	//	Date date = (Date)formatter.parse(time);
	//	java.sql.Timestamp reminderTime = new java.sql.Timestamp(date.getTime());
		time = time.replace("T"," ") + ":00";
		System.out.println(time);
		java.sql.Timestamp reminderTime	= java.sql.Timestamp.valueOf(time);
//		System.out.println(date);
		System.out.println(reminderTime);
		Statement st = con.createStatement();
		int i = st.executeUpdate("UPDATE URLS SET REMINDER=TO_TIMESTAMP('"+reminderTime+"','YYYY-MM-DD HH24:MI:SS.FF') WHERE URLID='"+urlid+"'");
	    return i;
	}
	
	public String viewReminder(int urlid) throws Exception{
		Statement st = con.createStatement();
		String query = "SELECT UURL, to_TIMESTAMP(REMINDER,'dd-mm-yyyy hh12:mi:ss') as REMINDER from URLS"
				+ " where UEmailId=(select distinct UEmailId from urls where urlid = '"+urlid+"') "
				+ "and REMINDER is not null";
		System.out.println(query);
		ResultSet rs = st.executeQuery(query);
		List<Reminder> reminderList = new ArrayList<Reminder>();
	    while(rs.next()){
	    	Reminder reminder = new Reminder();
	    	reminder.setUrl(rs.getString("UURL"));
	    	reminder.setDate(rs.getString("REMINDER"));
	    	reminderList.add(reminder);
	    }
	    ObjectMapper mapper = new ObjectMapper();
	    System.out.println(mapper.writeValueAsString(reminderList));
		return mapper.writeValueAsString(reminderList);
	}
	
	public int signIn(String email, String pwd) throws SQLException{
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from SignUp where EMAILID='"+email +"' and PASSWORD='"+pwd+"'");
		if(rs.next()){
			return 1;
		}
		return 0;
	}
	public int addSite(Meta meta, String email) throws SQLException {
		
		Statement st = con.createStatement();
	   
	    ResultSet rs = st.executeQuery("select Max(URLID)+1 as inc from URLS");
	   
	    rs.next();
	 
	  long countLong = rs.getLong("inc");
	  int count = (int)countLong;
	  int   ID = count;
	  String FAV = "NO";
	  int i = st.executeUpdate("INSERT INTO URLS(URLID,UURL,UTitle,UDesc,UImgURL,UFavicon,UType,UEmailId,FAV)" + " VALUES ('"+ID+"','"+meta.getUrl()+"','"+meta.getTitle()+"','"+meta.getDescription()+"','"+meta.getImage()+"','"+meta.getFavicon()+"','"+meta.getType()+"','"+email+"','"+FAV+"')");
			
		
		return ID;
	}
	public String getProfile(String email) throws Exception{
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select NAME,EmailId,TOC1,TOC2,password FROM SignUp where EmailId='"+email+"'");
		if(rs.next()){
			Profile profile = new Profile();
			profile.setName(rs.getString("NAME"));
			profile.setEmailId(rs.getString("EmailId"));
			profile.setToC1(rs.getString("TOC1"));
			profile.setToC2(rs.getString("TOC2"));
			profile.setPassword(rs.getString("password"));
			ObjectMapper mapper = new ObjectMapper();
		    System.out.println(mapper.writeValueAsString(profile));
			return mapper.writeValueAsString(profile);
		}
		return "failure";
	}
	public int updateProfile(String email,String name,String password,String toC1,String toC2) throws Exception{
		Statement st = con.createStatement();
		int i = st.executeUpdate("UPDATE SignUp SET NAME='"+name+"',PASSWORD='"+password+"',TOC1='"+toC1+"',TOC2='"+toC2+"' WHERE EmailId='"+email+"'");
	    return i;	
	}
	public String getSite(String email) throws Exception{
		List<Meta> metalist =new ArrayList<Meta>();
		Statement st = con.createStatement();
		String intervalquery = "nvl(to_number(trunc(1000 * (extract(second from  reminder - sysdate) + 60 * (extract(minute from  reminder - sysdate)" +
			    	      "+ 60 * (extract(hour from  reminder - sysdate) + 24 * (extract(day from  reminder - sysdate) )))))),-1) as reminderinterval";
	    ResultSet rs = st.executeQuery("select URLID,UURL,UTitle,UDesc,UImgURL,UFavicon,UType,FAV,UEmailId,"+intervalquery+",to_char(REMINDER,'dd-mm-yyyy hh24:mi:ss') as REMINDER from URLS  where UEmailId = '"+email+"' ORDER BY URLID");
		while(rs.next()){
			Meta meta = new Meta();
			meta.setUrlid(rs.getString("URLID"));
			meta.setUrl(rs.getString("UURL"));
			meta.setTitle(rs.getString("UTitle"));
			meta.setDescription(rs.getString("UDesc"));
			meta.setImage(rs.getString("UImgURL"));
			meta.setFavicon(rs.getString("UFavicon"));
			meta.setType(rs.getString("UType"));
			meta.setFav(rs.getString("FAV"));
			meta.setReminderInterval(rs.getString("reminderinterval"));
			meta.setEmailId(rs.getString("UEmailId"));
			meta.setReminder(rs.getString("REMINDER"));
		//	System.out.println(rs.getString("UEmailId"));
			
			metalist.add(meta);
		}
		ObjectMapper mapper = new ObjectMapper();
	    System.out.println(mapper.writeValueAsString(metalist));
		return mapper.writeValueAsString(metalist);
	}
	
	
	public int deleteSite(int urlid) throws SQLException{
		Statement st = con.createStatement();
		int i = st.executeUpdate("DELETE FROM URLS WHERE URLID='"+urlid+"'");
	    return i;
	                                       }
	//UPDATE URLS SET FAV='YES' WHERE URLID=1001;
	public int updateFav(int urlid,String fav) throws SQLException{
		Statement st = con.createStatement();
		int i = st.executeUpdate("UPDATE URLS SET FAV='"+fav+"' WHERE URLID='"+urlid+"'");
	    return i;
	                                       }
	
	public int addbirthday(String email,String name,String date,String dpurl) throws Exception{
		  Statement st = con.createStatement();
		  ResultSet rs = st.executeQuery("select Max(BID)+1 as inc from BIRTHDAYS");
		  rs.next();
		  long countLong = rs.getLong("inc");
		  int count = (int)countLong;
		  int   ID = count;
		  int i = st.executeUpdate("INSERT INTO BIRTHDAYS(BID,BNAME,BDATE,DPURL,UEMAILID)" + " VALUES ('"+ID+"','"+name+"',to_date('"+date+"', 'YYYY-MM-DD'),'"+dpurl+"','"+email+"')");
	      return i;	
	}

}
