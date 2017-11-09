package com.BC.myapp;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
/*import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.annotate.JsonAutoDetect;*/
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.jsoup.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import com.BC.bean.Meta;

public class Example1 {

	
	public String SiteDetails(String URL) throws Exception {
		
		String userAgent = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36";
        int timeout = 12000;
        Connection.Response response = null;
        Document doc = null;
        String title = null;
        String fav=null;
        String desc =null;
        String imageUrl = null;
        String type =null;
 
             response = Jsoup.connect(URL).userAgent(userAgent).timeout(timeout).referrer("http://www.google.com").followRedirects(true).execute();            	  	
             doc = response.parse();       
             
             //System.out.println();
             /*JSONObject result =  new JSONObject();
             JSONObject status = new JSONObject();
             JSONObject meta = new JSONObject();*/
            // JSONObject main = new JSONObject();           
             
             Meta meta = new Meta();    
       if (200 == response.statusCode()) {
    	   
    	   //title
    	   title = doc.title();    	   
    	   if(title == ""){
    		   Elements metaOgTitle = doc.select("meta[property=og:title]");
    		   title = metaOgTitle.attr("content");
    		    if(title == ""){  
    			   metaOgTitle = doc.select("meta[name=twitter:title]");
    			   title = metaOgTitle.attr("content"); 
    			   if(title ==""){
    				   metaOgTitle = doc.select("meta[itemprop=title]");
    				   title = metaOgTitle.attr("content"); 
    			                 }
    		                   } 
    	                    }
    	   
    	   //favicon
    	   Elements dany = doc.head().select("link[href~=.*\\.(ico|png)]");
    	 //   org.jsoup.nodes.Element element2 = doc.head().select("link[href~=.*\\.(ico|png)]").first();
    	   fav = dany.attr("abs:href");
    	   if(fav == ""){
    		   dany = doc.head().select("meta[itemprop=image]"); 
    		   fav = dany.attr("abs:content");
    	                }
    	   
    	  
    	   
    	   //description
    	   Elements element3 = doc.select("meta[name=description]");
    	   String tempdesc = element3.attr("content");
    	   if(tempdesc !=""){
    		       desc = tempdesc;
    	                     }
    	   else{
    		   Elements metaOgdesc = doc.select("meta[property=og:description]");
    		   desc = metaOgdesc.attr("content");
    		   if(desc == ""){
    			   metaOgdesc = doc.select("meta[name=twitter:description]");
    			   desc = metaOgdesc.attr("content");
    			   if(desc ==""){
    				   metaOgdesc = doc.select("meta[itemprop=description]");
    				   desc =  metaOgdesc.attr("content");
    			                }
    		                 }
    		   
    	       }
    	   
    	   //image
    	     Elements rain = doc.select("meta[property=og:image]");
    	  // org.jsoup.nodes.Element metaOgImage = doc.select("meta[property=og:image]").first();
    	   String tempimage =  rain.attr("abs:content");
    	   if (tempimage!="") {
               imageUrl = tempimage;
                                  }
    	   else{
    		   Elements hello = doc.select("meta[itemprop=image]");
    		        tempimage = hello.attr("abs:content");
          		if(tempimage!="") {
          		  imageUrl = tempimage;
          		                }
          		else{
          			hello = doc.select("meta[name=twitter:image]");
          			imageUrl = hello.attr("abs:content");
          			  
          		    }
    	       }
                            

    	   //type
    	   Elements metaOgtype = doc.select("meta[property=og:type]");
    	   String temptype = metaOgtype.attr("content");
    	   if(temptype != ""){
    		       type = temptype;
    	                     }
    	   else if(URL.contains(".jpeg")||URL.contains(".JPEG")||URL.contains(".jpg")||URL.contains(".JPG")||URL.contains(".png")||URL.contains(".PNG")||URL.contains(".GIF")||URL.contains(".gif")||URL.contains(".JFIF")){
    	    	   type = "image";
    	                                                                                                                                                                                                                   } 	   
    	   else if(URL.contains("youtube")||URL.contains("dailymotion")){
    	    	   type = "video" ;
    	                                                                 } 
    	   else{
    	    	   type = response.contentType();   
    	       }
           
    	   System.out.println(type); 
           System.out.println(imageUrl);
           System.out.println(desc);
           System.out.println(fav);
           System.out.println(title);
           
         
           //status.put("status", "OK");
       //    result.put("result", status);
           /*meta.put("url",URL);
           meta.put("type",type);
           meta.put("title",title);
           meta.put("image",imageUrl);
           meta.put("description",desc);
           meta.put("favicon",fav);
           main.put("result", status);
           main.put("meta", meta);*/
           meta.setUrl(URL);
           meta.setType(type);
           meta.setTitle(title);
           meta.setImage(imageUrl);;
           meta.setDescription(desc);
           meta.setFavicon(fav);
           ObjectMapper mapper = new ObjectMapper();
   	    System.out.println(mapper.writeValueAsString(meta));
   		return mapper.writeValueAsString(meta);
           
                                       }        
        
        else {
        	/*System.out.println("Error");
        	
            status.put("status", "OK");
            result.put("result", status);
            main.put("result", result);*/
        	return "nodata";
            }
       
       /* ObjectMapper mapper = new ObjectMapper();
	    System.out.println(mapper.writeValueAsString(main));
		return mapper.writeValueAsString(main);*/
        
          
    }	
}
