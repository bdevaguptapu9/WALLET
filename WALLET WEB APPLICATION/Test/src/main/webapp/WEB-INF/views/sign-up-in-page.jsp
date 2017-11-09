<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp or Logn In</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="shortcut icon" href="/myapp/resources/Home%20page_files/icon11.PNG" />
  
      <%-- <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" > --%>
      
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" >
</head>
<body>
<div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form id="loginform" onsubmit="signup()"  >
          
          
         <div class="field-wrap">
            <label>
              Name<span class="req">*</span>
            </label>
            <input id = "uname" type="text"required autocomplete="off"/>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input id = "email" type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id="pwd" minlength="6" autocomplete="off"required/>
          </div>
          
           <div class="field-wrap">   
         
           <a>TOPIC OF INTEREST:</a> &nbsp; &nbsp;
          <select name="T1" id="T1">
  <option value="Science" ${param.foo == 'Science' ? 'selected' : ''}>Science</option>
  <option value="News" ${param.foo == 'News' ? 'selected' : ''}>News</option>
  <option value="Gameofthrones" ${param.foo == '3' ? 'selected' : ''}>Game of thrones</option>
  <option value="Technology" ${param.foo == 'Technology' ? 'selected' : ''}>Technology</option>
          </select>
          &nbsp; &nbsp;
           <select name="T2" id="T2">
  <option value="Gameofthrones">Game of thrones</option>
  <option value="Technology">Technology</option>
  <option value="News">News</option>
  <option value="Science">Science</option>
          </select>
          
          
          </div>
          
          
          
          
          
          
          <button type="submit" class="button button-block" >Get Started</button>
         
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input id="E1" type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input id="P1" type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block" onclick="login();">Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
 
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/js/index.js" ></script>
    <script type="text/javascript">
    function signup(){
    	var url = 'signup?uname=' +getvalue('uname')+  '&email=' +getvalue('email')+ '&pwd=' +getvalue('pwd')+ '&T1=' +getvalue('T1')+ '&T2=' +getvalue('T2');
    	$.post(url, function(data){
    		if(data === 'success'){
    			window.location.assign("loginsuccess");
    			//return false;
    		}
    		else{
    			window.location.assign("loginfailure");	
    			
    			//return false;
    		}
    	});
    	alert("PRESS OK TO PROCEED");
    //	return false;
    }
    
    function login(){
    	var url = 'login?email=' +getvalue('E1')+  '&pwd=' +getvalue('P1');
    
    	$.post(url, function(data){
    		if(data === 'success'){
    			window.location.assign("loginsuccess");
    			//return false;
    		}
    		else{
    			window.location.assign("loginfailure");	
    			//return false;
    		}
    	});
    	//return false;
    	alert("PRESS OK TO PROCEED");
    }
    
    
   
    
    
    
    
    function getvalue(id){
    	return document.getElementById(id).value;
    }
	</script>    

</body>
</html>