<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>API</title>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<link rel="icon" type="image/png" href="https://urlmeta.org/assets/img/favicon.png">
</head>
<body>

<P id="para"> </P>
 <form id="hello"> 
             <input type="text" name="url">
             <input type="button" id="but" onclick="Add()">
 </form>

<script>
//action="siteDetails" method="post"
$( document ).ready(function() {
	document.getElementById('hello').style.display = "none";
//	document.getElementsByName("fname").value = 'Foobar';
	var url_string = window.location.href;
	var url = new URL(url_string);
	var c = url.searchParams.get("url");
	document.getElementsByName("fname").value = c;
	var e1 = document.getElementById('but');
	e1.click(); 
	console.log(c);
});
 
function Add(){ 
	var url_string = window.location.href;
	var url = new URL(url_string);
	var c = url.searchParams.get("url");
$.post("siteDetails?url="+c,function(data){
       if(data === "nodata"){
    	   //alert("ERROR");
 var ERRORJSON = '{ "result": { "status": "ERROR","code": 4, "reason": "Could not find what you were looking for." }}'; 
 document.getElementById('para').innerHTML  = ERRORJSON;
       }
       else{
    	   document.getElementById('para').innerHTML  = data; 
    	 //  alert(data);
       }
     
                                            });
                                            
                                            
                }                               
</script>

</body>
</html>
