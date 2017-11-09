<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" >
</head>
<body>
<div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">SET REMINDER</a></li>
        <li class="tab"><a href="#login" onclick="viewReminder()">VIEW REMINDERS</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
            
         <h1>Set Once & Get Reminded</h1>
          
          <form action="/" method="post" onSubmit="return false">
          

          <div class="field-wrap">
           
            <input type="text" id="rurl" autocomplete="off" readonly/>
          </div>
          
          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
             <input class="min-today" type="datetime-local" id = "time" required/>
      
          </div>
          
          <button type="submit" class="button button-block" onclick='saveReminder()'/>SET</button>
          
          </form>

        </div>
        
        <div id="login">  
        
         <h1>LIST OF REMINDERS</h1>
          
          <form action="/" method="post">
          <table id = "reminderTable">
  <tr>
    <th>URL</th>
    <th>DATE</th>
  </tr>
</table>
   <br><br>         
          
      <ul class="tab-group">
        <li><a href="/myapp">BACK TO MY LIST</a></li> 
        <li><a href="#">LOG OUT</a></li>
      </ul>
          
          </form>
        
        

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    background-color: #33BBFF;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child() {
    background-color: #33FFA5;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	getReminder();
});

function getReminder(){
	var url = "getReminderName?urlid="+${urlid};
	$.post(url, function(data){
		document.getElementById("rurl").value = data;
	});
}

function saveReminder(){
	 
	 var time = document.getElementById("time").value;
	 var dateMaint = new Date(time);
	 var currentTime = new Date();
	 if((dateMaint.getTime() >= currentTime.getTime())&&(dateMaint.getDate() >= currentTime.getDate())&&(time !="")){
		  var url = "saveReminder?urlid="+${urlid}+"&time="+time;
			$.post(url,function(data){
				if(data == -1){
					alert("FALIED TO ADD REMINDER: TRY AFTER SOME TIME");
				}else{
					alert("REMINDER ADDED:CHECK IN VIEW REMINDER TAB");
				}
			});                   	  
	                                                                                                   }
	 else{
		 alert("PLEASE ENTER VALID TIME AND DATE");
	     }
} 
function viewReminder(){
	url = "viewReminder?urlid="+${urlid};
	$(".reminderlist").remove();
	$.post(url, function(data){
		if(data === "failure"){
			alert("FAILED TO FETCH REMINDER LIST")
		}else{
			var json = $.parseJSON(data);
			for(i=0;i<json.length;i++){
				setReminderTable(json[i]);
			}
		}
	});
}
function setReminderTable(json){
	var row = "<tr class='reminderlist'>"+
	    "<td>"+json.url+"</td>"+
	    "<td>"+json.date+"</td>"+
	  "</tr>";
	 
	$("#reminderTable").append(row); 
}

</script>
</body>
</html>