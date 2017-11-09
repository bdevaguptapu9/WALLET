// Copyright (c) 2011 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/*chrome.tabs.getSelected(null, function(tab) {
        var tab = tab.id;
        var tabUrl = tab.url;
     
        alert(tab.url);
        alert(tabUrl);
    });*/
/*function hello(){
	var URL = '';
 chrome.tabs.query({active: true, currentWindow: true}, function(arrayOfTabs) {

     // since only one tab should be active and in the current window at once
     // the return variable should only have one entry
     var activeTab = arrayOfTabs[0];
     var activeTabId = activeTab.id; // or do whatever you need
     URL = activeTab.url;
   //  alert(activeTab.url);

  });
// var gan = document.getElementById('h2').value;
 alert("hello");

}
*/

chrome.contextMenus.create({
	  title: "Save to Wallet",
	  contexts:["all"],
	  onclick: hello
	});




function hello(){
	
	chrome.tabs.query({active: true, currentWindow: true}, function(arrayOfTabs) {
	     var activeTab = arrayOfTabs[0];
	     
	$.ajax({
        url: "http://localhost:9001/myapp/extnCall",
        type: "POST",   
        data: {url : activeTab.url},
        success: function(data) {
      	       // alert("success"+data);
      	        if(data === "success"){
      	        	 var json = "";
	      	 	 	 var URLGET     = '';
	      	 	 	 var title   = '';
	      	 	 	 var desc    = '';
	      	 	 	 var imgurl  = '';
	      	 	     var favicon = '';
	      	 	     var type = '';
	      	 	     var tag= '';
	      	 	     $.ajax({
	      	 	         url: "http://localhost:9001/myapp/siteDetails",
	      	 	         type: "POST",   
	      	 	         data: {url : activeTab.url},
	      	 	         success: function(data) {
	      	 	     		if(data === "nodata"){
	      	 	     			URLGET = activeTab.url;
	      	 	    		   	title = activeTab.url;
	      	 	    		   	imgurl = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Alter_Strom.jpg';
	      	 	    		   	favicon = '/myapp/resources/Pocket_ My List_files/def.PNG';				
	      	 	    		}else{
	      	 	    		    json = $.parseJSON(data);
	      	 	    		    URLGET     = json.url;
	      	 	    			title   = json.title;
	      	 	    			desc    = json.description;
	      	 	    			imgurl  = json.image;
	      	 	    		    favicon = json.favicon;
	      	 	    		    type    = json.type;
	      	 	    		   
	      	 	    		    desc = desc.replace(/["'|]/g, "");
	      	 	    		    title = title.replace(/["'|]/g, "");
	      	 	    		    
	      	 	    		    
	      	 	    		   if((json.image === '')&&(json.description === '')){
	      	 	    		    		imgurl = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Alter_Strom.jpg'; 
	      	 	    		                                                     }
	      	 	    		     if(json.favicon === ''){
	      	 	    		    	 favicon = '/myapp/resources/Pocket_ My List_files/def.PNG';
	      	 	    		                            }
	      	 	    		     if((json.title === null)||(json.title === '')){
	      	 	    		    	 title = URLGET;
	      	 	    		                                                   }  
	      	 	    		     if(type.includes("image")){
	      	 	    		          imgurl = URLGET;
	      	 	    		                               }
	      	 	    		     
	      	 	    		    }
	      	 	    		 var url = 'addsite?url='+URLGET +'&type='+type+'&title='+title+'&image='+imgurl+'&description='+desc+'&favicon='+favicon;
	      	 	    	        console.log(url);
	      	 	    	        
	      	 	    	        $.ajax({
	      	 	    	            url: "http://localhost:9001/myapp/addsite",
	      	 	    	            type: "POST",   
	      	 	    	            data: {url : URLGET, type : type , title : title, image : imgurl,
	      	 	    	            	description : desc, favicon : favicon},
	      	 	    	            
	      	 	    	            success: function(data) {
	      	 		    	        	if(data === '-1'){
	      	 		    	        		alert("Failed to Add AT DATABASE LEVEL: PLEASE CHECK CONNECTION");
	      	 		    	            	             }
	      	 		    	        	
	      	 		    	        	else{
	      	 		    	        		 alert("PAGE ADDED TO WALLET SUCESSFULLY");
	      	 		    	     	chrome.browserAction.setIcon({tabId: activeTab.id, path:"icon11.png"});	        		
	      	 		    	        		
	      	 		    	         	}
	      	 		    	        },
	      	 	    	            error: function(e) {
	      	 	    	          	        alert("error");
	      	 	    	          	    }	  
	      	 	    	      });
	      	 	    	    
	      	 	    	      
	      	 	    		},
	      	 	         error: function(e) {
	      	 	       	        alert("error");
	      	 	       	    }	  
	      	 	   });
      	        }else{
      	        	alert("UNAUTHORISED USER: PLEASE LOGIN TO WALLET");
      	        }
      	    },
        error: function(e) {
      	        alert("ERROR");
      	    }	  
  });
	     

	 });
	
	
             } 

function addSite(url12){
	var json = "";
	var URL     = '';
	var title   = '';
	var desc    = '';
	var imgurl  = '';
    var favicon = '';
    var type = '';
    var tag= '';
	$.post("siteDetails?url="+VAL,function(data){
		if(data === "nodata"){
			URL = VAL;
		   	title = URL;
		   	imgurl = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Alter_Strom.jpg';
		   	favicon = '/myapp/resources/Pocket_ My List_files/def.PNG';				
		}else{
		    json = $.parseJSON(data);
		    URL     = json.url;
			title   = json.title;
			desc    = json.description;
			imgurl  = json.image;
		    favicon = json.favicon;
		    type    = json.type;
		   
		    desc = desc.replace(/["'|]/g, "");
		    title = title.replace(/["'|]/g, "");
		    
		    
		   if((json.image === '')&&(json.description === '')){
		    		imgurl = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Alter_Strom.jpg'; 
		                                                     }
		     if(json.favicon === ''){
		    	 favicon = '/myapp/resources/Pocket_ My List_files/def.PNG';
		                            }
		     if((json.title === null)||(json.title === '')){
		    	 title = URL;
		                                                   }  
		     if(type.includes("image")){
		          imgurl = URL;
		                               }
		     
		    }
		 var url = 'addsite?url='+URL +'&type='+type+'&title='+title+'&image='+imgurl+'&description='+desc+'&favicon='+favicon;
	        //console.log(url);
	    
	        $.post(url, function(data){
	        	if(data === '-1'){
	        		alert("Failed to Add AT DATABASE LEVEL: PLEASE CHECK CONNECTION");
	            	             }
	        	
	        	else{
	        		 location.reload();
	        		
	        		
	         	}});  
		});
}
	
	
	
	
	
	
	
	
	/*chrome.tabs.query({active: true, currentWindow: true}, function(arrayOfTabs) {
	     var activeTab = arrayOfTabs[0];
	   //  alert(activeTab.url);
	     if(activeTab.url.includes('http')) {
	     chrome.bookmarks.create({    'parentId' : '100',
             'url': activeTab.url
                                 });
	     chrome.browserAction.setIcon({tabId: activeTab.id, path:"icon11.png"});
	     alert("PAGE SAVED!");
	     //window.location.href = "https://www.google.com/";
	     jQuery.ajax({
	         type : "POST", 
	         url : "http://localhost:9001/myapp/loginsuccess", 
	         data : "", 
	         success : function (data, textStatus, XMLHttpRequest) {
	             console.log("Data Saved: " + msg);
	         }
	     });
	     //var url = $(this).prop('href');
	     //send the url to your server
	     $.ajax({
	          type: "POST",
	          url: "http://localhost:9001/myapp"
	     });
	     }
	     else{
	    	 alert("UNABLE TO ADD PAGE PLEASE CHECK URL!");
	     }    

	                  });
	*/
	
	
              


chrome.browserAction.onClicked.addListener(hello);























/*function updateIcon() {
  chrome.browserAction.setIcon({path:"icon11.png"});
}
function removeIcon() {
	  chrome.browserAction.setIcon({path:""});
	}*/


/*chrome.browserAction.onClicked.addListener(updateIcon);

chrome.browserAction.onClicked.addListener(function(tab) { alert('icon clicked')});
chrome.tabs.reload(removeIcon);
/*updateIcon();
*/