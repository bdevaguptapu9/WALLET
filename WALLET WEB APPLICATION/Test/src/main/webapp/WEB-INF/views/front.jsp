<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wallet!</title>
<link href="/myapp/resources/Home%20page_files/site-c8622646.css" rel="stylesheet"> 
 <link rel="shortcut icon" href="/myapp/resources/Home%20page_files/icon11.PNG" />
</head>
<body class="index home"> 
 <header class="header" id="header"> 
 <div class="header--inner"> 
 <div class="header--container container container---full"> 

 <div class="header--left">
 <a href="#" class="logo" title="Login"><img src="http://flamingtext.com/net-fu/proxy_form.cgi?script=orlando-logo&text=WALLET&_loc=generate&imageoutput=true" width="170" height="170"> </a>

 <nav class="header--nav--item">
 
 
 </nav> </div>
 <a class="header--nav--item" href="#hello">Features</a>
 <a class="header--nav--item" href="https://www.linkedin.com/in/bharat-devaguptapu-280964138/">About Us</a>
 <a class="header--nav--item" href="#pollo">Contact Us</a>
     <div class="header--auth-nav---unauth" id="header--nav---unauth"> 
     <a id="logsin" class="header--sign-in-btn header--auth-nav--item btn btn---text btn---s" onclick ="login()">Log in</a> 
     <a id="signsup" class="home--sign-up-btn header--auth-nav--item btn btn---primary btn---shamrock btn---s" data-toggle="modal" onclick ="login()">Sign up</a>
      </div> 
      <div class="header--auth-nav--dropdown--menu header--dropdown--menu dropdown--menu dropdown-menu"> 
      <div class="dropdown--menu--section"> 
      <div class="media-object media-object---centered"> 
      <div class="media-object--body"> 
      <div class="header--auth-nav--dropdown--menu--name" id="header--name"> 
      <div class="media-object--figure"> 
      <div class="header--auth-nav--initials" id="header--initials">
      </div></div></div> </div> </div> </div> </div>
</div></div></header> 

<div class="header-backdrop"></div> 
<header class="home--content-header content-header" id="home--content-header"> 
<div class="home--content-header--inner content-header--inner"> 
<div class="container"><img src="/myapp/resources/Home%20page_files/final.PNG"><img src="/myapp/resources/Home%20page_files/small.PNG"><!--  <h1 style="color:  #f72f0c ;" class="home--title">Save,Search,Classify web pages beautifully; </h1> --> 
<!-- <h2 style="color:  #17202a  ;" class="home--subtitle">Set Reminders,Get Favorite Articles</h2>  --> 
<br><br>
<a class="home--btn btn btn---primary btn---shamrock btn---l btn---full show-hide---mobile" data-toggle="modal" onclick ="login()">Sign up</a> 
<div class="home--sign-up-box box hide-show---mobile"></div>
 <div class="home--sign-up-box--body box--body"> </div>
</div></div> </header>

   <div id="hello"><a id="hello"></a></div>
   <section class="section" style="background-color:#1dcac7"> <div class="container"> 
   <div class="home--features--item media-object media-object---centered media-object---loose media-object---reset---tablet"> 
   <div class="media-object--figure row---tablet"> <div class="module"> 
   <h3 class="module--title">Save web pages with single button click <img src="/myapp/resources/Home%20page_files/icon11.PNG"><br> CHROME EXTENSION </h3> 
   <p> <strong>Receive Emails</strong> When you click on reminder icon <img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/tets.PNG"> you can choose time and date to get reminded</p> 
   <p> <strong>Store Web pages</strong> and its information </p> </div> </div> 
   <div class="home--features--item--img media-object--body visible"> 
   <img alt="" src="/myapp/resources/Home%20page_files/samplemail.jpg" style="width:304px;height:500px;"> 
 
   </div> 
   </div> </div> </section> 
   <section class="section section---divided" style="background-color:#eed90b"> <div class="container">
   <div class="home--features--item media-object media-object---centered media-object---loose media-object---reset---tablet">

    <img src="/myapp/resources/Home%20page_files/F2.PNG" width='555' height='342'>
    <img src="/myapp/resources/Home%20page_files/F3.PNG" >
</iframe> 
   <div class="home--features--item--img media-object--body row---tablet show-hide---tablet"> 
    </div> 
   <div class="media-object--figure row---tablet"> <div class="module"> 
   
  <!--  <img alt="" aria-hidden="true" class="module--icon" src="/myapp/resources/Home%20page_files/megaphone-db4aa4bd.svg"> 
   <h3 class="module--title">Receive Mobile Reminders.</h3> <p> Set Once Get reminded before <strong>Due Date.</strong> </p> <p> <strong>Add,Delete,Receive on Your Priority</strong> you can set how many days before you want to be reminded </p> --> </div> </div> </div> 
  </div> 
  <div id="pollo"><a id="pollo"></a></div>
  </section> 
  <section class="section section---divided" style="background-color:#1cd6b4"> <div class="container"> 
  <div class="home--features--item media-object media-object---centered media-object---loose media-object---reset---tablet"> 
  <h3 class="module--title">        Contact Us                <br>
                            Email Us  :bharat.devguptapu@gmail.com <br>
                            CAll  Us  :+1(626)-(241)-(8545)   <br>
                            ADDRESS   :CAL POLY POMONA        <br>
                        <a href="https://github.com/bdevaguptapu9">Follow us On Git</a></h3>
  <div class="media-object--figure row---tablet"> <div class="module"> 
  
  </div> </div> </div> </div></section> 
 
</body>

<script>

function login(){
	window.location.assign("signuplogin");
}

</script>


</html>