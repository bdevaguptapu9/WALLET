<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="js flexbox flexboxlegacy ">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Wallet: My List</title>
    <meta name="description" content="When you find something you want to view later, put it in Pocket.">
    <meta name="keywords" content="wallet, read it later, save for later, read later, bookmark, bookmarks, iphone, app, offline, ipad, android, kindle, firefox, extension">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://cdn.emailjs.com/dist/email.min.js"></script> 
    <link rel="stylesheet" href="/myapp/resources/Pocket_ My List_files/global.min.css">
     <link rel="shortcut icon" href="/myapp/resources/Home%20page_files/icon11.PNG" />
</head>
<body class="page-queue page-queuelight page-skinlight page-app-en-us">
    <div id="container" class="page-app-premiumcta ">
        <div class="conversion-bar"></div>
          <div id="page">
       <!-- Rainbow line on top -->   
       
            <div class="toolbar_queue_rainbow">
                <div class="rainbow_detail rainbow_first"></div>
                <div class="rainbow_detail rainbow_second"></div>
                <div class="rainbow_detail rainbow_third"></div>
                <div class="rainbow_detail rainbow_fourth"></div>
            </div>
            
       <!-- Navigation bar started -->
       
     <nav class="pkt-nav">
     <h1 style="position:absolute;color:#1296e8;">&nbsp;&nbsp;WALLET</h1>
     
    <div class="toolbar_queue toolbar navigationItem wrapper wrapper_full active">
  
    <div class="toolbar_queue_divider"></div>
       
     <!-- <img src='https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/W-circle.svg/240px-W-circle.svg.png' style='position:absolute; top:0; left:0;' width='50' height='50' alt='' />  -->
    
     <!-- all our navbar items visible -->
     
    <ul class="icons leftItem">
    <!--   <img src='http://flamingtext.com/net-fu/proxy_form.cgi?script=orlando-logo&text=WALLET&_loc=generate&imageoutput=true' style='position:absolute;top:90; left:0;' width='120' height='120' alt='' />   -->
        <li id="pagenav_sidenav" class="pagenav_sidenav">
            <a href="#" class="header-nav-toggle"><span></span></a>
            <span class="inbox_badge"></span>
        </li>
        
        <li class="pagenav_queuedetail">
            <h2 class="queue_title queue_title_main queue_title_queue">My List</h2>
            <a class="queue_toggle_listqueue queue_toggle_listqueueprimary" href="#">
                <span class="nav-toggledetail">in My List</span>
                <span class="nav-togglenotch"></span>
                
         <!-- entire side Nav bar  -->       
                
            <div id="" class="dropSelector toggle_listqueue_container" style=""><a></a><div class="popover-new popover-new-bottom"><div class="popover-new-header"><a class="popover-new-close" href="#"></a></div><div class="arrow"></div><ul class="popover-new-list"><li class="popover-new-listitem mylist" val="mylist"><a href="#">My List</a></li><li class="popover-new-listitem favorites" val="favorites"><a href="">Favorites</a></li><li class="popover-new-listitem archive last" val="archive"><a href="#">Archive</a></li></ul></div></div></a>
        </li>
        
      <!-- all our navbar items visible -->
        
        <li class="pagenav_sectiontoggle">
            
            <div class="queue_togglesection_option queue_togglesection_optionselected queue_togglesection_home">
                <span class="queue_togglesection_text">Home</span>
            </div>
          <div id="pagenav_explore" class="queue_explore_option">
                <a href="#" onclick="rec()">
                    <span class="queue_togglesection_text">Recommended</span>
                </a>
            </div>
            
             <div id="pagenav_explore" class="queue_explore_option">
                <a href="https://news.google.com/news/?ned=us&hl=en" target="_blank">
                    <span class="queue_togglesection_text">Explore<span class="nav-rarrow">›</span></span>
                </a>

        
            </div>
            
           
            <div id="pagenav_explore" class="queue_explore_option">
               
                 <div class="search-input-wrapper">
                <ul class="search-input-list">
                    <li class="search-input">
                        <input id="add_page" type="text" placeholder="https:\\" maxlength="100">                       
                    </li>

                </ul>
                    
                </div>  
                <!-- <a href=""> -->
                    <span class="queue_tocgglesection_text">  <button id="B1" class="buttons" type="submit" onclick="addSite()"><img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/add.PNG"></button> </span>
                <!-- </a> -->
             
   
             
                       
             
               
                 <div class="search-input-wrapper">
                <ul class="search-input-list">
                    <li class="search-input">
                        <input id="page_search" type="text" placeholder="Search by Title or URL." maxlength="100">
                    </li>
                </ul>
                
                  </div>
                  
              <!-- <a href=""> -->
                    <span class="queue_togglesection_text"> <button class="buttons" type="submit" onclick="forSearch()"><img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/search.PNG"></button></span>
                <!-- </a> --> 
                 
            
            </div>
                        
            
        </li>
    </ul>
    
     <!-- profile on navbar -->
    
    <ul class="icons rightItem"> 
        <li id="pagenav_options">
            <a class="pagenav_options_link" title="" href="#" onclick='forUpdate()'>
                <span class="nav-avatar" style="background-image: url(https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Flh3.googleusercontent.com%2F-iCUDproowj0%2FAAAAAAAAAAI%2FAAAAAAAAAKg%2FT275KDAaqE4%2Fphoto.jpg&amp;amp;resize=w80-h80);"></span>
                <span class="nav-username">PROFILE<img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/drop.PNG"></span>        
                <span class="nav-downnotch">   
                </span>            
            </a>
         
          
         <!--  <div id="pagenav_options_container" style="display: none" class="dropSelector innerpopover-active"><a></a><div id="roy" class="popover-new popover-new-bottomleft popover-active" style="top: 28px; left: -207px;"><div class="popover-new-header"><a class="popover-new-close" href="#"></a></div><div class="arrow"></div><ul class="popover-new-list"><li class="popover-new-listitem profile" val="profile"><a href="#" ><span class="popover-profile-avatar" style="background-image: url(https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Flh3.googleusercontent.com%2F-iCUDproowj0%2FAAAAAAAAAAI%2FAAAAAAAAAKg%2FT275KDAaqE4%2Fphoto.jpg&amp;amp;resize=w80-h80);"></span>
<span class="popover-profile-text" >
    <h5 class="popover-profile-name">Bharat Devaguptapu</h5>
    <p class="popover-profile-desc">View Profile</p>
</span></a></li><li class="popover-new-listitem premium" val="premium"><a href="javascript:window.location.reload(true)" onclick='close()'>Close<span class="nav-icon"></span></a></li><li class="popover-new-listitem help" val="help"><a href="#">Help<span class="nav-icon"></span></a></li><li class="popover-new-listitem options" val="options"><a href="#">Options<span class="nav-icon"></span></a></li><li class="popover-new-listitem logout last" val="logout"><a href="#">Logout<span class="nav-icon"></span></a></li></ul></div></div>
          
        
   <script type="text/javascript">
       var slides = document.getElementById('pagenav_options_container');
       function showSlide(){
           slides.style.display = "block";
                            }    
   </script>   -->  
               
       
       </li>
       
      
     <li id="pagenav_options">
      <div id="pagenav_explore" class="queue_explore_option">
                <a href="#" onclick = "logout()">
                    <span class="queue_togglesection_text">LOGOUT<span class="nav-rarrow">›</span></span>
                </a>
            </div>
     </li>    
       
    </ul>
    
     <!-- end of navs start of untouched tags-->
    
    
   
<div class="container-bulkedit">
    <div class="bulkedit-content">
        <div class="bulkedit-status"><p></p></div>
        <div class="bulkedit-actions">
            <ul>
                <li class="bulkedit-archive">
                    <a href="https://getpocket.com/a/queue/#">
                        <span class="bulkedit-icon"></span> 
                        <span class="bulkedit-desc">Archive</span>
                    </a>
                </li>
                <li class="bulkedit-favorite">
                    <a href="https://getpocket.com/a/queue/#">
                        <span class="bulkedit-icon"></span> 
                        <span class="bulkedit-desc">Favorite</span>
                    </a>
                </li>
                <li class="bulkedit-delete">
                    <a href="https://getpocket.com/a/queue/#">
                        <span class="bulkedit-icon"></span> 
                        <span class="bulkedit-desc">Delete</span>
                    </a>
                </li>
                <li class="bulkedit-addtag">
                    <a href="https://getpocket.com/a/queue/#">
                        <span class="bulkedit-icon"></span> 
                        <span class="bulkedit-desc">Add Tag</span>
                    </a>
                </li>
            </ul>
        </div>
        <a class="bulkedit-cancel" href="https://getpocket.com/a/queue/#"></a>
    </div>    
</div></div><div class="searchtoolbar_screenbar"></div>

 <!-- end of untouched tags-->







</nav>

<!-- Original navbar ends here,side nav bar starts here -->


<div class="side-screen"></div>
<div class="side-nav">
    <div class="nav-content nav-content-header">
        <a href="https://getpocket.com/a/queue/#" class="header-nav-toggle header-nav-toggle-close"><span></span></a>
        <h2>Pocket</h2>
    </div>
    <div class="nav-content nav-content-main">
        <nav class="nav-default">
            <ul>
               <br><br>  <!-- nav-selected -->  
                <li><a class="section-mylist " href=" "><span class="nav-icon"></span>MY LIST</a></li>
                <!--  <li><a class="section-mylist " href=" "><span class="nav-icon"></span>BIRTHDAYS</a></li> -->
                <li><a class="section-favorites" href="#" onclick="forFavs()"><span class="nav-icon"></span>Favorites</a></li>
                <li><a class="section-archive" href="#" onclick="forRemtab()"><span class="nav-icon"></span>Reminders</a></li>
                <li class="nav-default-divider"></li>
                <li><a class="nav-sublist filter-articles" onclick="forArticle()" href="#"><span>Articles</span></a></li>
                <li><a class="nav-sublist filter-videos" href="#" onclick="forVideos()"><span>Videos</span></a></li>
                <li><a class="nav-sublist filter-images" onclick="forImages()" href="#"><span>Images</span></a></li>
                <!-- <li><a class="nav-sublist filter-images" onclick="birthday()" href="#"><span>++BIRTHDAYS</span></a></li> -->
               <!--  <li>
                    <a class="filter-tags" href="#"><span class="nav-icon"></span>Tags <span class="nav-rarrow">›</span></a>
                </li> -->
                
            </ul>

        </nav>
       
    </div>
    
 <!-- End of alll navs including side nav,start of untouched code -->   
    
    <div class="wrapper_tag">
        <div class="tag_name"></div>
           <div id="pagenav_tagfilter" class="dropSelector titleItem titleSelector" style="display: block;">
           <div class="popover-new popover-new-centeredleft"><div class="popover-new-header"></div>
           <div class="arrow"></div><ul class="popover-new-list"><li class="popover-new-listitem all selected" val="all"><a href="https://getpocket.com/a/queue/#">All Items</a></li><li class="popover-new-listitem untagged last" val="untagged"><a href="https://getpocket.com/a/queue/#">Untagged Items</a></li></ul></div></div></div>
             <div class="nav-mobileupsell nav-mobileupsell-inactive">
    </div>
</div>

<!-- End of untouched code START OF TILE CODE-->  

           
            <div id="content" style="display: block;">
            <div id="page_queue" class="wrapper wrapper_full page_queue_grid active">
	        <div id="dist" class="queue_secondarynav queue_secondarynav_main">
            <div id="page_queue_explore_tiles" style="display: block;"></div>
		       <h2 id="h2" class="queue_title queue_title_main queue_title_queue">My List</h2>
		       <a class="queue_toggle_listqueue queue_toggle_listqueuesecondary" href="#">
               <span class="nav-toggledetail">in My List</span>
               <span class="nav-togglenotch"></span>
		
	       </div>
	       
<!-- START OF ORIGINAL TILE CODE  TILE :1--> 	       
	       
	       
	       
    <ul id="queue" class="queue_list queue_list_main">
       
     <li class="item item_type_normal_only_title adjusted" id="i1800305118">
	<div class="item_content">
		<a class="item_link start_webview" href="#" rel="nofollow noopener noreferrer"></a>
		
	</div>	
	</li>
</ul>
<div class="clear"></div>

</div>
</li>
	



 <!--
 <img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/delete.png">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/fav.PNG">
	<img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/Capture.PNG">
 
 
 
<li class="item item_type_normal_excerpt adjusted" id="i331141440">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=http%3A%2F%2Fangular-ui.github.io%2Fbootstrap%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=http%3A%2F%2Fangular-ui.github.io%2Fbootstrap%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">Angular directives for Bootstrap</a><p class="excerpt" style="height: 162px;">For Angular 2 support, check out ng-bootstrap , created by the UI Bootstrap team.  This repository contains a set of native AngularJS directives based on Bootstrap's markup and CSS. As a result no dependency on jQuery or Bootstrap's JavaScript is required. The only required dependencies are:</p>
		<span class="thumb" variant="" style="height: 178.72px;"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=http%3A%2F%2Fangular-ui.github.io%2Fbootstrap%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="331141440" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fangular-ui.github.io%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(1)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=http%3A%2F%2Fangular-ui.github.io%2Fbootstrap%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">angular-ui.github.io</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/code">code</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div><ul class="buttons">

    	<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>
    	<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>
    	<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>
    	<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>
    	<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>
</ul>
</div>
</li>



<li class="item item_type_normal adjusted" id="i1654708200">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1654708200" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1654708200">Using Bootstrap with&nbsp;Angular</a>
		<span class="thumb lazy-active" variant="" data-lazy-type="thumbnail" data-lazy-key="1654708200" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fcdn-images-1.medium.com%2Fmax%2F1600%2F1*iWeeqjhMRk-Xlfy8g65nLg.png&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 178.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fcdn-images-1.medium.com%2Fmax%2F1600%2F1*iWeeqjhMRk-Xlfy8g65nLg.png&amp;resize=w317-nc&amp;f=t&quot;);"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fmedium.com%2Fcodingthesmartway-com-blog%2Fusing-bootstrap-with-angular-c83c3cee3f4a&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1654708200" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fmedium.com%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(2)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fmedium.com%2Fcodingthesmartway-com-blog%2Fusing-bootstrap-with-angular-c83c3cee3f4a&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">medium.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/code">code</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div><ul class="buttons">

    	<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>
    	<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>
    	<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>
    	<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>
    	<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>
</ul>
</div>
</li><li class="item item_type_spoc spoc_list_item spoc adjusted" id="i1811579192" data-feeditemid="an-20873ae2d7c648879957b7643c4f6068_98f4c2f5" data-itemurl="https://www.vmware.com/radius/millennials-generation-z-shaping-digital-workspace/?src=sp_595ea264e5330&amp;cid=70134000001MnIS" data-impressionid="20873ae2d7c648879957b7643c4f6068_98f4c2f5">
	<div class="item_content">
		<div class="spoc_header">
			<a href="https://getpocket.com/@vmware_radius">
				<div class="spoc_id"><img src="/myapp/resources/Pocket_ My List_files/84143cc3fcfd80b773299667294b93a767f271b.jpg" alt="">VMware</div>
				<div class="spoc_label">SPONSORED</div>
			</a>
		</div>
		<span class="thumb spoc_image lazy-active" data-lazy-type="thumbnail" data-lazy-key="1811579169" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fcdn.adsnative.com%2Fmedia%2Fnw-727%2Fcda4d5b6-2d6c-4e56-87c7-f978369d1773.jpg&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="false" style="height: 205.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fcdn.adsnative.com%2Fmedia%2Fnw-727%2Fcda4d5b6-2d6c-4e56-87c7-f978369d1773.jpg&amp;resize=w317-nc&amp;f=t&quot;);"></span>
		<a class="item_link" href="https://getpocket.com/redirect?&amp;url=https%3A%2F%2Fwww.vmware.com%2Fradius%2Fmillennials-generation-z-shaping-digital-workspace%2F%3Fsrc%3Dsp_595ea264e5330%26cid%3D70134000001MnIS&amp;h=d3a22096fa4c096c05ce63646f3789311a68ae9ecb9dc327b87dbe36a817f531" rel="nofollow noopener noreferrer" target="_blank"></a>
		<div class="spoc_copy">
			<a class="title" href="https://getpocket.com/redirect?&amp;url=https%3A%2F%2Fwww.vmware.com%2Fradius%2Fmillennials-generation-z-shaping-digital-workspace%2F%3Fsrc%3Dsp_595ea264e5330%26cid%3D70134000001MnIS&amp;h=d3a22096fa4c096c05ce63646f3789311a68ae9ecb9dc327b87dbe36a817f531">Employee Engagement and the Digital Workspace</a>
			<p class="domain">vmware.com</p>
			<nav class="item_content_actions spoc_footer">
				<ul class="item_content_actionscontainer">
					<li class="item_content_savecontainer">
					<a class="item_content_save" data-saveurl="https://www.vmware.com/radius/millennials-generation-z-shaping-digital-workspace/?src=sp_595ea264e5330&amp;cid=70134000001MnIS" href="https://getpocket.com/a/queue/#">
						<svg class="item_save_icon" viewBox="0 0 100 100"><path d="M13.44 10.11c-3.34 0-6.38 2.1-7.57 5.23-.35.93-.53 1.89-.53 2.88v26.95l.31 5.36c1.29 12.19 7.62 22.85 17.41 30.28.18.13.35.26.53.39l.11.08c5.25 3.84 11.13 6.44 17.47 7.71 2.93.59 5.92.89 8.89.89 2.75 0 5.51-.25 8.22-.76.33-.06.65-.12.98-.19.09-.02.19-.05.29-.1 6.07-1.33 11.71-3.86 16.76-7.55l.11-.08c.18-.13.36-.26.53-.39 9.79-7.43 16.12-18.08 17.41-30.28l.31-5.36V18.21c0-.93-.11-1.86-.44-2.77-1.16-3.19-4.22-5.34-7.61-5.34h-.05M75.31 43.53L54.3 63.68c-1.19 1.14-2.71 1.71-4.24 1.71-1.53 0-3.06-.57-4.24-1.71L24.81 43.53c-2.44-2.34-2.52-6.22-.18-8.66 2.34-2.44 6.22-2.52 8.66-.18l16.78 16.09 16.77-16.09c2.44-2.34 6.32-2.26 8.66.18 2.33 2.44 2.25 6.31-.19 8.66z"></path></svg>
						<span class="item_content_savetext">Save</span>
					</a>
					</li>
					<li class="item_content_hidecontainer">
						<a class="item_content_overflow" data-feeditemid="an-20873ae2d7c648879957b7643c4f6068_98f4c2f5" data-impressionid="20873ae2d7c648879957b7643c4f6068_98f4c2f5" href="https://getpocket.com/a/queue/#">
							<svg class="item_overflow_icon" viewBox="0 0 25 25"><circle cx="12.336" cy="12.25" r="2.25"></circle><circle cx="20.15" cy="12.25" r="2.25"></circle><circle cx="4.85" cy="12.25" r="2.25"></circle></svg>
						</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</li><li class="item item_type_normal adjusted" id="i1797519165">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1797519165" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1797519165">Binary Programmers</a>
		<span class="thumb lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1797519165" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fcs580.yusun.io%2Fteams-winter2017%2FbProgrammers%2Fimg%2Fportfolio%2FreminderPage.png&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 199.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fcs580.yusun.io%2Fteams-winter2017%2FbProgrammers%2Fimg%2Fportfolio%2FreminderPage.png&amp;resize=w317-nc&amp;f=t&quot;);"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=http%3A%2F%2Fcs580.yusun.io%2Fteams-winter2017%2FbProgrammers%2Freminder.html&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1797519165" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fcs580.yusun.io%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(3)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=http%3A%2F%2Fcs580.yusun.io%2Fteams-winter2017%2FbProgrammers%2Freminder.html&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">cs580.yusun.io</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/mywebsite">mywebsite</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div><ul class="buttons">

    	<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>
    	<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>
    	<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>
    	<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>
    	<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>
</ul>
</div>
</li><li class="item item_type_normal adjusted" id="i1774195319">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1774195319" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1774195319">Why do most Indians not use toilet paper?</a>
		<span class="thumb lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1774195319" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fqph.ec.quoracdn.net%2Fmain-qimg-f595731bc91929e48fe760b7d39ced3d-c&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 177.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fqph.ec.quoracdn.net%2Fmain-qimg-f595731bc91929e48fe760b7d39ced3d-c&amp;resize=w317-nc&amp;f=t&quot;);"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2FWhy-do-most-Indians-not-use-toilet-paper&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1774195319" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fquora.com%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(4)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2FWhy-do-most-Indians-not-use-toilet-paper%2Fanswer%2FFrancesca-F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">quora.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div><ul class="buttons">

    	<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>
    	<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>
    	<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>
    	<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>
    	<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>
</ul>
</div>
</li>
<li class="item item_type_normal_video adjusted" id="i888707604">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/888707604" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/888707604">Bollywood full movies - Aarakshan (Caste Reservation) - Amitabh Bachchan, Deepika Padukone - Jaat</a>
		<span class="thumb lazy-load" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="888707604" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fimg.youtube.com%2Fvi%2FcEboCC9gTwU%2F0.jpg&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal_video" data-shouldcache="true" style="height: 111.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DcEboCC9gTwU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="888707604" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fyoutube.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DcEboCC9gTwU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">youtube.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/movie">movie</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>

<li class="item item_type_normal_excerpt adjusted" id="i43138614">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">Suchst Du Quora auf Deutsch?</a><p class="excerpt" style="height: 162px;">A place to share knowledge and better understand the worldActions taken on this page while JavaScript is disabled will not perform as expected.LoginSign Up With EmailSuchst Du Quora auf Deutsch?By continuing you indicate that you have read and agree to the Terms of Service and Privacy Policy.</p>
		<span class="thumb" variant="[object Object]" style="height: 177.72px;"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="43138614" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fquora.com%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(4)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.quora.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">quora.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div><ul class="buttons">

    	<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>
    	<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>
    	<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>
    	<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>
    	<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>
</ul>
</div>
</li><li class="item item_type_normal_image adjusted" id="i1772684701">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1772684701" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1772684701">canberra_hero_image_JiMVvYU.jpg (900×450)</a>
		<span class="thumb lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1772684701" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fcanberra_hero_image_JiMVvYU.jpg&amp;resize=w317-h255-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal_image" data-shouldcache="true" style="background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fcanberra_hero_image_JiMVvYU.jpg&amp;resize=w317-h255-nc&amp;f=t&quot;);"></span>
		<img class="favicon lazy-active" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fcanberra_hero_image_JiMVvYU.jpg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1772684701" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fplanwallpaper.com%2Ffavicon.ico&amp;f=fi" src="./Pocket_ My List_files/direct(5)">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fcanberra_hero_image_JiMVvYU.jpg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">planwallpaper.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/first%20image">first image</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_only_title adjusted" id="i1770789533">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.dailymotion.com%2Fvideo%2Fx5ov6nk_gentle-yoga-for-low-back-pain-with-lindsey-safe-stretches-for-hamstrings_lifestyle&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.dailymotion.com%2Fvideo%2Fx5ov6nk_gentle-yoga-for-low-back-pain-with-lindsey-safe-stretches-for-hamstrings_lifestyle&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">Gentle Yoga for Low Back Pain with Lindsey : Safe Stretches for Hamstrings</a>
		<span class="thumb thumb-wimage lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1770789533" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fdailymotion.com%2Fapple-touch-icon.png&amp;resize=w80-h80-nc" data-thumbvariant="1" data-shouldcache="true" style="height: 155.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fdailymotion.com%2Fapple-touch-icon.png&amp;resize=w80-h80-nc&quot;), url(&quot;/a/i/tile_graphic_site@1x.png&quot;), url(&quot;/a/i/tile_fallback@1x.jpg&quot;);"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.dailymotion.com%2Fvideo%2Fx5ov6nk&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1770789533" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fdailymotion.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.dailymotion.com%2Fvideo%2Fx5ov6nk_gentle-yoga-for-low-back-pain-with-lindsey-safe-stretches-for-hamstrings_lifestyle&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">dailymotion.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/yoga">yoga</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i1771303714">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F13mgzU1EN49hMOmpefudRYJaIP7aVJN6OKZ3dVksoEI8%2Fedit&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F13mgzU1EN49hMOmpefudRYJaIP7aVJN6OKZ3dVksoEI8%2Fedit&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">One account. All of Google.</a><p class="excerpt" style="height: 180px;">Sign in with a different account Create account One Google Account for everything Google</p>
		<span class="thumb" variant="[object Object]" style="height: 199.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F13mgzU1EN49hMOmpefudRYJaIP7aVJN6OKZ3dVksoEI8%2Fedit&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1771303714" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fdocs.google.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F13mgzU1EN49hMOmpefudRYJaIP7aVJN6OKZ3dVksoEI8%2Fedit&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">docs.google.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i1771303430">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fdrive%2Ffolders%2F0B0PYF7UYtxfFaGdBM1psZW1MUUU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fdrive%2Ffolders%2F0B0PYF7UYtxfFaGdBM1psZW1MUUU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">One account. All of Google.</a><p class="excerpt" style="height: 180px;">Sign in with a different account Create account One Google Account for everything Google</p>
		<span class="thumb" variant="[object Object]" style="height: 199.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fdrive%2Ffolders%2F0B0PYF7UYtxfFaGdBM1psZW1MUUU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1771303430" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fdrive.google.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fdrive.google.com%2Fdrive%2Ffolders%2F0B0PYF7UYtxfFaGdBM1psZW1MUUU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">drive.google.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_only_title adjusted" id="i1734141563">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Fstatic.pexels.com%2Fphotos%2F50594%2Fsea-bay-waterfront-beach-50594.jpeg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Fstatic.pexels.com%2Fphotos%2F50594%2Fsea-bay-waterfront-beach-50594.jpeg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">https://static.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg</a>
		<span class="thumb thumb-wimage lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1734141563" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fstatic.pexels.com%2Fapple-touch-icon.png&amp;resize=w80-h80-nc" data-thumbvariant="1" data-shouldcache="true" style="height: 155.72px; background-image: url(&quot;https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fstatic.pexels.com%2Fapple-touch-icon.png&amp;resize=w80-h80-nc&quot;), url(&quot;/a/i/tile_graphic_site@1x.png&quot;), url(&quot;/a/i/tile_fallback@1x.jpg&quot;);"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fstatic.pexels.com%2Fphotos%2F50594%2Fsea-bay-waterfront-beach-50594.jpeg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1734141563" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fstatic.pexels.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fstatic.pexels.com%2Fphotos%2F50594%2Fsea-bay-waterfront-beach-50594.jpeg&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">static.pexels.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/image">image</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i1771287565">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1771287565" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1771287565">Redirect Notice</a><p class="excerpt" style="height: 180px;">The previous page is sending you to http://maruthitalkies.com/surabhi-glam-pics/111950.html.   If you do not want to visit that page, you can return to the previous page.</p>
		<span class="thumb" variant="[object Object]" style="height: 199.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.google.com%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0ahUKEwjTwfG8tKXUAhVJyyYKHQ8gDH4QjRwIBw%26url%3Dhttp%253A%252F%252Fmaruthitalkies.com%252Fsurabhi-glam-pics%252F111950.html%26psig%3DAFQjCNF7nn--IA2TzdBg6en3rfUG9WtOuA%26ust%3D1496707537279586&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1771287565" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fgoogle.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.google.com%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0ahUKEwjTwfG8tKXUAhVJyyYKHQ8gDH4QjRwIBw%26url%3Dhttp%253A%252F%252Fmaruthitalkies.com%252Fsurabhi-glam-pics%252F111950.html%26psig%3DAFQjCNF7nn--IA2TzdBg6en3rfUG9WtOuA%26ust%3D1496707537279586&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">google.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i1771287022">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1771287022" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1771287022">Redirect Notice</a><p class="excerpt" style="height: 180px;">The previous page is sending you to http://www.funroundup.com/samantha-ruth-prabhu-wallpaper-gallery/.   If you do not want to visit that page, you can return to the previous page.</p>
		<span class="thumb" variant="[object Object]" style="height: 199.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.google.com%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0ahUKEwiczdSatKXUAhWM5yYKHWf8C5QQjRwIBw%26url%3Dhttp%253A%252F%252Fwww.funroundup.com%252Fsamantha-ruth-prabhu-wallpaper-gallery%252F%26psig%3DAFQjCNF7nn--IA2TzdBg6en3rfUG9WtOuA%26ust%3D1496707537279586&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1771287022" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fgoogle.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.google.com%2Furl%3Fsa%3Di%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dimages%26cd%3D%26cad%3Drja%26uact%3D8%26ved%3D0ahUKEwiczdSatKXUAhWM5yYKHWf8C5QQjRwIBw%26url%3Dhttp%253A%252F%252Fwww.funroundup.com%252Fsamantha-ruth-prabhu-wallpaper-gallery%252F%26psig%3DAFQjCNF7nn--IA2TzdBg6en3rfUG9WtOuA%26ust%3D1496707537279586&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">google.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/samantha">samantha</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal adjusted" id="i154272244">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/154272244" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/154272244">"Page Saved!" Here are some tips to get started with Pocket</a>
		<span class="thumb lazy-load" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="154272244" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fs3.amazonaws.com%2Fpocket-general-images%2Fwelcome%2FHeader_Image_ArticleView.jpg&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 155.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fgetpocket.com%2Fa%2Fqueue%2F%23&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="154272244" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fgetpocket.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fgetpocket.com%2Fa%2Fqueue%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">getpocket.com</a></li>
	<li class="tags">
		<span class="tag_container"></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_video adjusted" id="i888707604">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/888707604" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/888707604">Bollywood full movies - Aarakshan (Caste Reservation) - Amitabh Bachchan, Deepika Padukone - Jaat</a>
		<span class="thumb lazy-load" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="888707604" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fimg.youtube.com%2Fvi%2FcEboCC9gTwU%2F0.jpg&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal_video" data-shouldcache="true" style="height: 111.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DcEboCC9gTwU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="888707604" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fyoutube.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DcEboCC9gTwU&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">youtube.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/movie">movie</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal adjusted" id="i1770540850">
	<div class="item_content">
		<a class="item_link start_articleview" href="https://getpocket.com/a/read/1770540850" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/a/read/1770540850">After London Attack, Prime Minister Says, ‘Enough Is Enough’</a>
		<span class="thumb lazy-load" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1770540850" data-thumburl="https://d33ypg4xwx0n86.cloudfront.net/direct?url=https%3A%2F%2Fstatic01.nyt.com%2Fimages%2F2017%2F06%2F05%2Fworld%2F05London1%2F05London1-superJumbo.jpg&amp;resize=w317-nc&amp;f=t" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 156.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.nytimes.com%2F2017%2F06%2F04%2Fworld%2Feurope%2Fuk-london-attacks.html&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1770540850" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fnytimes.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.nytimes.com%2F2017%2F06%2F04%2Fworld%2Feurope%2Fuk-london-attacks.html%3Fhp%26action%3Dclick%26pgtype%3DHomepage%26clickSource%3Dstory-heading%26module%3Dspan-ab-top-region%26region%3Dtop-news%26WT.nav%3Dtop-news%26_r%3D0&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">nytimes.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/artcle">artcle</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i1020596602">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Ftwitter.com%2FPocket%3Fref_src%3Dtwsrc%255Egoogle%257Ctwcamp%255Eserp%257Ctwgr%255Eauthor&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Ftwitter.com%2FPocket%3Fref_src%3Dtwsrc%255Egoogle%257Ctwcamp%255Eserp%257Ctwgr%255Eauthor&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">Pocket (@Pocket) | Twitter</a><p class="excerpt" style="height: 180px;">We've got some big, exciting news! Pocket is joining forces with @Mozilla. Read all about it here: http://getpocket.com/blog/2017/02/taking-pocket-further-with-mozilla …   Need something great to read this weekend? Get trending stories from Pocket Explore: https://pocket.co/sMNEkw</p>
		<span class="thumb" variant="[object Object]" style="height: 200.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Ftwitter.com%2Fpocket&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="1020596602" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Ftwitter.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Ftwitter.com%2FPocket%3Fref_src%3Dtwsrc%255Egoogle%257Ctwcamp%255Eserp%257Ctwgr%255Eauthor&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">twitter.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/2">2</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>
</li><li class="item item_type_normal_excerpt adjusted" id="i2763011">
	<div class="item_content">
		<a class="item_link start_webview" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank"></a>
		<a class="title" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b">John Cena Goes Undercover on Twitter, YouTube, and Reddit | Actually Me | GQ</a><p class="excerpt" style="height: 126px;">The next video is starting Watch Queue Queue __count__/__total__ Loading... Working...</p>
		<span class="thumb" variant="[object Object]" style="height: 134.72px;"></span>
		<img class="favicon lazy-load" data-originalurl="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" data-lazy-type="favicon" data-lazy-key="2763011" data-favicon-url="https://d33ypg4xwx0n86.cloudfront.net/direct?url=http%3A%2F%2Fyoutube.com%2Ffavicon.ico&amp;f=fi">
		<div class="favstate"></div>
	<ul class="sub clearfix">
	<li class="original_url_container"><a class="original_url" href="https://getpocket.com/redirect?url=https%3A%2F%2Fwww.youtube.com%2F&amp;formCheck=f1f785f41b3f0ecfd9ef197517a0232b" rel="nofollow noopener noreferrer" target="_blank" title="View Original">youtube.com</a></li>
	<li class="tags hasTags">
		<span class="tag_container"><a class="tag" href="https://getpocket.com/a/queue/grid/fun%20%3A)">fun :)</a></span>
		<a class="edit"><span>Add Tag</span></a>
	</li>
</ul>
<div class="clear"></div></div>


</li> --> 

</div></div>

            <footer>
                <div class="wrapper wrapper_full">
                </div>
            </footer>

        <div class="searchtoolbar_screen"></div></div>

    </div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script type="text/javascript">
var mainJson;
var favarraypush = [];
var favarraypop = [];
$(document).ready(function(){
	getSite();
});

/* function getReminders(){
	alert(mainJson[0].reminder);
} */

function notify(url,EmailId){
	alert("Reminder: "+url);
	//hello();
	 (function(){
      emailjs.init("user_EZrzBWjDMop0x3jZk8D3v");
      
      emailjs.send("default_service","template_2rhgaMlo",{to_address: EmailId, message_html: url})
      .then(function(response) {
         console.log("SUCCESS. status=%d, text=%s", response.status, response.text);
      }, function(err) {
         console.log("FAILED. error=", err);
      });
      
      
      
      
   })(); 
}

function callNotify(timeout,url,EmailId){
	if(timeout>2147483647){
		setTimeout(function(){ callNotify((timeout - 2147483647),url,EmailId); },2147483647);
	}else{
	setTimeout(function(){notify(url,EmailId);},timeout);
	}
}

function getSite(){
	var i = 0;
	$.get('getsite', function(data){
		if(data === "failure"){
			alert("FAILED TO FETCH THE DATA");
		}else{
		var json = $.parseJSON(data);
		mainJson = json;
		for(i=0 ; i<json.length ; i++){
			getTiles(json[i]);
			if(json[i].reminderInterval>=0){
				var url = json[i].url;
				var EmailId = json[i].emailId;
				//alert(json[i].emailId);
			//	alert(json[i].reminder);
	       document.getElementById("myRem"+json[i].urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/rte.PNG";
	       document.getElementById("myRem"+json[i].urlid).title = json[i].reminder; 
	            var timeout = json[i].reminderInterval;
	            //alert(timeout);
	            callNotify(timeout,url,EmailId);
			}
		}
		}
	});
}


		
		

function getTiles(json){
//	alert(json.urlid);
    var URLID   = json.urlid;
	var URL     = json.url;
	var title   = json.title;
	var desc    = json.description;
	var imgurl  = json.image;
    var favicon = json.favicon;
    var type    = json.type;
    var fav 	= json.fav;
    var tag     = '';
    var domain  = '';
    var tmp     = document.createElement ('a');
    var favsrc = '';
    tmp.href   =  URL;
    domain = tmp.hostname;
    if(domain.includes("www.")){
    	domain = domain.slice(4);
                               } 
 
     if((imgurl === null)&&(desc !== null)){
            tag = '<p class="excerpt" style="height: 162px;">'+desc+'</p>';   
                                           } 
                                                                  
    if(fav === "YES"){
    		favsrc = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/favs.PNG";
		}else{
			favsrc = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/fav.PNG";
		}
	
    var tile =  '<li class="item item_type_normal adjusted" id="'+URLID+'">'+
	'<div class="item_content">'+
	'<a class="item_link start_articleview" href=" '+URL+'" rel="nofollow noopener noreferrer" target="_blank"></a>'+
	'<a class="title" href="'+URL+'"> '+title+' </a>'+
	 tag+
	'<span class="thumb lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1797519165" data-thumburl="'+title+'" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 199.72px; background-image: url('+imgurl+');"></span>'+
	'<img class="favicon lazy-active" src="'+favicon+'" >'+
	'<div class="favstate"></div>'+
'<ul class="sub clearfix">'+
'<li class="original_url_container"><a class="original_url" href="'+URL+'" rel="nofollow noopener noreferrer" target="_blank" title="View Original">'+domain+'  &nbsp; &nbsp; &nbsp;</a>'+
 '<li>'+
'<a class="original_url" href="#" onclick="deleteSite('+URLID+')"> <img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/delete.png" title="Delete"></a>'+
'<a class="original_url" href="#" onclick="changeImage('+URLID+')"> <img id="myImage'+URLID+'" src="'+favsrc+'" title="Favorites"> </a>'+
/*'<a class="original_url"  href="reminder?urlid='+URLID+'"> <img src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/tets.PNG" title="Reminder"> </a>'+  */
'<a class="original_url" href="#" onclick="trails('+URLID+')"> <img id="myRem'+URLID+'" src="${pageContext.request.contextPath}/resources/Pocket_ My List_files/tets.PNG" title="Reminder"> </a>'+
'</li>'+
'<li class="tags hasTags">'+
	'<span class="tag_container"><a class="tag" href="">mywebsite</a></span>'+
	'<a class="edit"><span>Add Tag</span></a>'+
'</li>'+
'</ul>'+
'<div class="clear"></div><ul class="buttons">'+

	/*  '<li class="action_share" title="Share"><a href="https://getpocket.com/a/queue/#">Share</a></li>'+
	'<li class="action_mark" title="Archive"><a href="https://getpocket.com/a/queue/#">Archive</a></li>'+ 
	'<li class="action_delete" title="Delete"><a href="https://getpocket.com/a/queue/#">Delete</a></li>'+
	'<li class="action_tag" title="Edit tags"><a href="https://getpocket.com/a/queue/#">Edit tags</a></li>'+
	'<li class="action_favorite " title="Favorite"><a href="https://getpocket.com/a/queue/#">Favorite</a></li>'+  */
'</ul>'+
'</div>'+
'</li>'
   
	
	 $("#queue").prepend(tile);  
    
    
    
                        }


function addSite() {
	// CRAPPY CODE PRESENTS URL VALIDATION
  var VAL = document.getElementById("add_page").value; 
	  VAL = VAL.trim();                                           
	var n = VAL.indexOf(".");
	var b = VAL.length;
  var bos = VAL.replace("https://", "");
  var ros = VAL.replace("http://", "");
    var L = bos.search(/[a-z0-9]/g);
    var Z = ros.search(/[a-z0-9]/g);
    var k = -1;
    if(VAL.includes("https://")){
    	var k = bos.indexOf("https");	
                                }
    else if(VAL.includes("http://")){
    	var k = ros.indexOf("http");
                                    }
	
    var F = 0;
//	alert(k);
	if((VAL.indexOf("http://")  === 0)||(VAL.indexOf("https://")  === 0)){ 
		     if(((L<0)||(Z<0))||(k !== -1)){
		    	    F=1;
		    	//    alert(k);
		                                   }
	                                                                      }
 	else if((n === -1)||((b-n)<3)||(k !== -1)||(L<0)||(Z<0)){
		// alert("2 invalid");
		            F=1;
                                                            }
 	 
		 
	if(F === 1){
		alert("PLEASE ENTER A VALID URL");
	           }
	else{
		if(!((VAL.substring(0,8) === 'https://')||(VAL.substring(0,7) === 'http://'))){
			 VAL = 'https://' + VAL;
		                                                                               }
	   
		/* xmlhttp=new XMLHttpRequest();
		xmlhttp.open("GET", "https://api.urlmeta.org/?url="+VAL, false);
	//	xmlhttp.timeout = 10000;  
		xmlhttp.send();
		var data1 = xmlhttp.responseText;
		alert(data1); */
		
		
		var json = "";
		var URL     = '';
		var title   = '';
		var desc    = '';
		var imgurl  = '';
	    var favicon = '';
	    var type = '';
	    var tag= '';
	/*     var tmp    = document.createElement ('a');
	    tmp.href   = VAL;
	    var domain = tmp.hostname;
	    if(domain.includes("www.")){
	    	domain = domain.slice(4);
	                               }  */
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
	    

                                 }
                                 


function forSearch(){
	var searchKey = (document.getElementById("page_search").value).toUpperCase();
	var x = 0;
	
	if(null!=document.getElementById(1)){
	 document.getElementById(1).style.display = "none";
	 document.getElementById(2).style.display = "none";
	 document.getElementById(3).style.display = "none";
	 document.getElementById(4).style.display = "none";
	                                    }
//	var x = "hello";
//	if(x.includes)
	for(i=0 ; i<mainJson.length ; i++){
			if(mainJson[i].title.toUpperCase().includes(searchKey)  || mainJson[i].url.toUpperCase().includes(searchKey)){
			//	alert(mainJson[i].urlid);
				document.getElementById(mainJson[i].urlid).style.display = "block";
				x++;
			}else{
				document.getElementById(mainJson[i].urlid).style.display = "none";
				
			}
	}
	
	document.getElementById("h2").innerHTML = x + " Results found";
}

function forArticle(){
	var searchKey = 'text';
	var x = 0;
	
	if(null!=document.getElementById(1)){
		 document.getElementById(1).style.display = "none";
		 document.getElementById(2).style.display = "none";
		 document.getElementById(3).style.display = "none";
		 document.getElementById(4).style.display = "none";
		                                    }
	
	
	
	
	for(i=0 ; i<mainJson.length ; i++){
		    if(mainJson[i].type === null){
		    	document.getElementById(mainJson[i].urlid).style.display = "none";
		                                 } 
		    else if(mainJson[i].type.includes(searchKey)){
				document.getElementById(mainJson[i].urlid).style.display = "block";
				x++;
			}else{
				document.getElementById(mainJson[i].urlid).style.display = "none";
			}
	}
	
	document.getElementById("h2").innerHTML = x + " Articles in My List";
}

function forImages(){
	var searchKey = 'image';
	var x = 0;
	if(null!=document.getElementById(1)){
		 document.getElementById(1).style.display = "none";
		 document.getElementById(2).style.display = "none";
		 document.getElementById(3).style.display = "none";
		 document.getElementById(4).style.display = "none";
		                                    }
	
	for(i=0 ; i<mainJson.length ; i++){
		  if(mainJson[i].type === null){
		    	document.getElementById(mainJson[i].urlid).style.display = "none";
		                               }  
	        else if(mainJson[i].type.includes(searchKey)){
				document.getElementById(mainJson[i].urlid).style.display = "block";
				x++;
			}else{
				document.getElementById(mainJson[i].urlid).style.display = "none";
			}
	}
	
	document.getElementById("h2").innerHTML = x + " Images in My List";
}

function forVideos(){
	var searchKey = 'video';
	var x = 0;
	
	if(null!=document.getElementById(1)){
		 document.getElementById(1).style.display = "none";
		 document.getElementById(2).style.display = "none";
		 document.getElementById(3).style.display = "none";
		 document.getElementById(4).style.display = "none";
		                                    }
	
	for(i=0 ; i<mainJson.length ; i++){
		     if(mainJson[i].type === null){
		    	document.getElementById(mainJson[i].urlid).style.display = "none";
		                                } 
	         else if(mainJson[i].type.includes(searchKey)){
				document.getElementById(mainJson[i].urlid).style.display = "block";
				x++;
			}else{
				document.getElementById(mainJson[i].urlid).style.display = "none";
			}
	}
	
	document.getElementById("h2").innerHTML = x + " Videos in My List";
}


function forRemtab(){
	//var searchKey = 'null';
	var x = 0;
	
	if(null!=document.getElementById(1)){
		 document.getElementById(1).style.display = "none";
		 document.getElementById(2).style.display = "none";
		 document.getElementById(3).style.display = "none";
		 document.getElementById(4).style.display = "none";
		                                    }
	
	for(i=0 ; i<mainJson.length ; i++){
			if(mainJson[i].reminderInterval>=0){
				document.getElementById(mainJson[i].urlid).style.display = "block";
				x++;
			}else{
				document.getElementById(mainJson[i].urlid).style.display = "none";
			}
	}
	
	document.getElementById("h2").innerHTML = x + " Reminders in My List";
}




function rec(){
       if(!(document.getElementById("h2").innerHTML.includes('Articles on'))){
	
	
	var url = "getProfile"
		$.post(url,function(data){
			if(data === "failure"){
				alert("FAILED TO FETCH RECOMMENDED TAGS");
			}else{
			var json = $.parseJSON(data);
			for(i=0 ; i<mainJson.length ; i++){	
				document.getElementById(mainJson[i].urlid).style.display = "none";
	             	                  }
			document.getElementById("h2").innerHTML = "Articles on " + json.toC1 + " & " + json.toC2;
			
			
			if(json.toC1 == 'Technology'){
			 recsub('1','http://www.bbc.com/news/technology','Technology - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
		     recsub('2','https://www.livescience.com/technology','Technology News - 2017 Innovations and Future Tech','https://img.purch.com/h/1000/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA5NC84NTAvb3JpZ2luYWwvZ3JlYXQtYW1lcmljYW4tZWNsaXBzZS1zb2xhci1lbmVyZ3ktbWFwLmpwZw==','https://www.livescience.com/resources/apple-icon-57x57.png','livescience.com');
			                             }
			else if(json.toC1 == 'Game of thrones'){
		     recsub('1','http://gameofthrones.wikia.com/wiki/Game_of_Thrones_Wiki','Game of Thrones Wiki','http://images.wikia.com/gameofthrones/images/b/bc/Wiki.png','http://slot1.images.wikia.nocookie.net/__cb1503595964/common/skins/common/images/wiki.png','gameofthrones.wikia.com');
			 recsub('2','https://winteriscoming.net/','Winter is Coming - A Game of Thrones News & Rumors Site - Winter is Coming','https://cdn.fansided.com/wp-content/assets/site_images/winteriscoming/logo_winteriscoming-net.png','https://winteriscoming.net/wp-content/themes/fansided-v5/assets/images/favicon-wic.png','winteriscoming.net');
			                                       }
			else if(json.toC1 == 'News'){
			 recsub('1','http://www.bbc.com/news','News - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
			 recsub('2','http://www.latimes.com/','Los Angeles Times - California, national and world news - Los Angeles Times','http://www.trbimg.com/img-56fd643a/turbine/la-l-a-times-logo-20160331/600','http://www.trbas.com/jive/prod/common/images/lanews-apple-touch-icon.1q2w3_9ffdb679907f116af126c65ff1edb27a.png','latimes.com');
  			                            }
			else if(json.toC1 == 'Science'){
			 recsub('1','http://www.bbc.com/news/science_and_environment','Science & Environment - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
			 recsub('2','https://www.scientificamerican.com/','Science News, Articles, and Information - Scientific American','https://ichef.bbci.co.uk/news/660/cpsprodpb/A9E2/production/_97509434_cristophedemargeriescflngcarrier.jpg','https://www.scientificamerican.com/public/resources/favicons/favicon-196-73208969ab1ed3409bc55e8915ed8bae.png','scientificamerican.com');
			                               }
			
			if(json.toC2 == 'Technology'){
				 recsub('3','http://www.bbc.com/news/technology','Technology - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
			     recsub('4','https://www.livescience.com/technology','Technology News - 2017 Innovations and Future Tech','https://img.purch.com/h/1000/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA5NC84NTAvb3JpZ2luYWwvZ3JlYXQtYW1lcmljYW4tZWNsaXBzZS1zb2xhci1lbmVyZ3ktbWFwLmpwZw==','https://www.livescience.com/resources/apple-icon-57x57.png','livescience.com');
				                         }
			else if(json.toC2 == 'Gameofthrones'){
			     recsub('3','http://gameofthrones.wikia.com/wiki/Game_of_Thrones_Wiki','Game of Thrones Wiki','https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg','http://slot1.images.wikia.nocookie.net/__cb1503595964/common/skins/common/images/wiki.png','gameofthrones.wikia.com');
				 recsub('4','https://winteriscoming.net/','Winter is Coming - A Game of Thrones News & Rumors Site - Winter is Coming','https://cdn.fansided.com/wp-content/assets/site_images/winteriscoming/logo_winteriscoming-net.png','https://winteriscoming.net/wp-content/themes/fansided-v5/assets/images/favicon-wic.png','winteriscoming.net');
			                                       }
		    else if(json.toC2 == 'News'){
				 recsub('3','http://www.bbc.com/news','News - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
				 recsub('4','http://www.latimes.com/','Los Angeles Times - California, national and world news - Los Angeles Times','http://www.trbimg.com/img-56fd643a/turbine/la-l-a-times-logo-20160331/600','http://www.trbas.com/jive/prod/common/images/lanews-apple-touch-icon.1q2w3_9ffdb679907f116af126c65ff1edb27a.png','latimes.com');
	  			                            }
	        else if(json.toC2 == 'Science'){
				 recsub('3','http://www.bbc.com/news/science_and_environment','Science & Environment - BBC News','http://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1','http://static.bbci.co.uk/news/1.206.01880/apple-touch-icon-57x57-precomposed.png','bbc.com');
				 recsub('4','https://www.scientificamerican.com/','Science News, Articles, and Information - Scientific American','https://ichef.bbci.co.uk/news/660/cpsprodpb/A9E2/production/_97509434_cristophedemargeriescflngcarrier.jpg','https://www.scientificamerican.com/public/resources/favicons/favicon-196-73208969ab1ed3409bc55e8915ed8bae.png','scientificamerican.com');
				                               }
			
    	
			}
	
                                    });
		
       }

}

function recsub(URLID,URL,title,imgurl,favicon,domain){
	
	
	 var tile =  '<li class="item item_type_normal adjusted" id="'+URLID+'">'+
		'<div class="item_content">'+
		'<a class="item_link start_articleview" href=" '+URL+'" rel="nofollow noopener noreferrer" target="_blank"></a>'+
		'<a class="title" href="'+URL+'"> '+title+' </a>'+
		'<span class="thumb lazy-active" variant="[object Object]" data-lazy-type="thumbnail" data-lazy-key="1797519165" data-thumburl="'+title+'" data-thumbvariant="2" data-tileclass="normal" data-shouldcache="true" style="height: 199.72px; background-image: url('+imgurl+');"></span>'+
		'<img class="favicon lazy-active" src="'+favicon+'" >'+
		'<div class="favstate"></div>'+
	'<ul class="sub clearfix">'+
	'<li class="original_url_container"><a class="original_url" href="'+URL+'" rel="nofollow noopener noreferrer" target="_blank" title="View Original">'+domain+'  &nbsp; &nbsp; &nbsp;</a>'+
	 '<li>'+
	'</li>'+
	'<li class="tags hasTags">'+
		'<span class="tag_container"><a class="tag" href="">mywebsite</a></span>'+
		'<a class="edit"><span>Add Tag</span></a>'+
	'</li>'+
	'</ul>'+
	'<div class="clear"></div><ul class="buttons">'+
	'</ul>'+
	'</div>'+
	'</li>'
	
	 $("#queue").prepend(tile); 
	
}





























function forUpdate(){
	
	var url = "getProfile";
	
	$.post(url,function(data){
		if(data === "failure"){
			alert("FAILED TO FETCH PROFILE");
		}else{
		var json = $.parseJSON(data);
		for(i=0 ; i<mainJson.length ; i++){	
			document.getElementById(mainJson[i].urlid).style.display = "none";
             	                  }
document.getElementById("h2").innerHTML = "PROFILE PAGE";
var fields = '<li class="tags hasTags">'+
             '<span class="tag_container"><a class="tag" href="">UPDATE PROFILE</a>'+
             '<form id="updateForm" onsubmit="return false">'+
             '<a class="tag">NAME:</a>'+
             '<a class="tag"><input id="pname" type="text" minlength="1" autocomplete="off"/></a>'+
             '<a class="tag">PASSWORD:</a>'+
             '<a class="tag"><input id="ppassword" type="password" minlength="6" autocomplete="off"/></a>'+
             '<a class="tag">TOPIC OF INTREST:</a>'+                           
             '<a class="tag"> <select id="p1select">'+
             '<option value="Science">Science</option>'+
             '<option value="News">News</option>'+
             '<option value="Gameofthrones">Game of thrones</option>'+
             '<option value="Technology">Technology</option>'+
             '</select></a>'+
             '<a class="tag"> <select id="p2select">'+
             '<option value="Science">Science</option>'+
             '<option value="News">News</option>'+
             '<option value="Gameofthrones">Game of thrones</option>'+
             '<option value="Technology">Technology</option>'+
             '</select></a>'+
             '<a class="tag"><button type="submit" onclick = "updateProfile()">UPDATE</button></a>'+
             '</form>'+
             '</span>'+
             '</li>'
	
	

 	$("#queue").html(fields);
             
 	$("#pname").val(json.name);
 	$("#ppassword").val(json.password);
    $("#p1select").val(json.toC1);
	$("#p2select").val(json.toC2);
		}
	});	
	
	
}

function updateProfile(){
	url = "updateProfile?name="+$("#pname").val()
			+"&password="+$("#ppassword").val()+"&toC1="+$("#p1select").val()+"&toC2="+$("#p2select").val();
	$.post(url,function(data){
		if(data == -1){
			alert("FAILED TO UPDATE PROFILE");
		}else{
			alert("PROFILE UPDATED SUCCESSFULLY");
		}
	});
}

function forFavs(){
var searchKey = 'YES';
if(null!=document.getElementById(1)){
	 document.getElementById(1).style.display = "none";
	 document.getElementById(2).style.display = "none";
	 document.getElementById(3).style.display = "none";
	 document.getElementById(4).style.display = "none";
	                                    }

for(i=0 ; i<mainJson.length ; i++){
	   	
		if(mainJson[i].fav.includes(searchKey)){
			document.getElementById(mainJson[i].urlid).style.display = "block";
		}else{
			document.getElementById(mainJson[i].urlid).style.display = "none";
		     }
                                  }
for(i=0;i<favarraypush.length;i++){
	document.getElementById(favarraypush[i]).style.display = "block";
}

for(i=0;i<favarraypop.length;i++){
	document.getElementById(favarraypop[i]).style.display = "none";
}
  
     document.getElementById("h2").innerHTML = "Favorites";              
}





function changeImage(urlid) {
  // alert(document.getElementById("myImage"+urlid).src); 
   var fav;
    if (document.getElementById("myImage"+urlid).src === "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/fav.PNG") 
    {
    	fav = 'YES';
       // document.getElementById("myImage"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/favs.PNG";
       // alert(document.getElementById("myImage"+urlid).src);    
    }
    else 
    {
    	fav = 'NO';
       // document.getElementById("myImage"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/fav.PNG";
    }
    var url = 'updateFav?urlid='+urlid+'&fav='+fav;
  //  alert(url);
   	$.post(url, function(data){
   		if(data == -1){
   			alert("FAILED TO ADD TO FAVORITES: TRY AFTER SOMETIME");
   		               }
   		else{
   		 
   			if(fav === "YES"){
   				document.getElementById("myImage"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/favs.PNG";
   				favarraypush.push(urlid);
   				var index = favarraypop.indexOf(urlid);
   				if(index > -1){
   					favarraypop.splice(index,1);
   				}
   			}else{
   				document.getElementById("myImage"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/fav.PNG";
   				favarraypop.push(urlid);
   				var index = favarraypush.indexOf(urlid);
   				if(index > -1){
   					favarraypush.splice(index,1);
   				}
   				if(document.getElementById("h2").innerHTML === "Favorites"){
   					$("#"+urlid).remove();
   				}
   			}   			
   		    }	
   	}); 
}




 function deleteSite(urlid){
//	alert(urlid);
    var url = 'deletesite?urlid='+urlid;
 //   alert(url);
	$.post(url, function(data){
		if(data == -1){
			alert("FAILED TO DELETE: TRY AFTER SOMETIMES");
		               }
		else{
			
			alert("TILE DELETED");
			$("#"+urlid).remove();
		    }	
	}); 
	
	
	
	//
} 

   /* var glides = document.getElementById('i1800305118');
   glides.style.display = "none"; */
  
 //  var heading =  '<h2 class="queue_title queue_title_main queue_title_queue">My List</h2>';
 //  $("#dist").append(heading);
  // alert("im working");
                  //   }    
                                   
function trails(urlid) {
	
	var fields = '<li class="tags hasTags">'+
    '<span class="tag_container"><a class="tag" href="">SET REMINDER</a>'+
    '<form id="updateRem" onsubmit="return false">'+
    '<a class="tag">URL:</a>'+
    '<a class="tag" id="rurl"></a>'+
    '<a class="tag">PICK DATE & TIME:</a>'+
    '<a class="tag"><input class="min-today" type="datetime-local" id = "time" required/></a>'+
    '<a class="tag"><button type="submit" onclick = "saveReminder('+urlid+')">SET</button></a>'+
    '</form>'+
    '</span>'+
    '</li>'
    
    $("#queue").html(fields);	
    document.getElementById("h2").innerHTML = "SET REMINDER";   
	
    var url = "getReminderName?urlid="+urlid;
   // alert(url);
	$.post(url, function(data){
	//	 alert(data);
		document.getElementById("rurl").innerHTML = data;
	});   
    
    
    
    
    
 
	
	/* if (document.getElementById("myRem"+urlid).src === "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/tets.PNG") 
    {
        document.getElementById("myRem"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/rte.PNG";
       // alert(document.getElementById("myImage"+urlid).src);    
    }
    else 
    {    	
       document.getElementById("myRem"+urlid).src = "http://localhost:9001/myapp/resources/Pocket_%20My%20List_files/tets.PNG";
    } */	
}             


 function saveReminder(urlid){
	 
	 var time = document.getElementById("time").value;
	 var dateMaint = new Date(time);
	 var currentTime = new Date();
	 var F=0;
	 
	 if(time !=""){
	 if((dateMaint.getYear() > currentTime.getYear())){
		 F=1;
	                                                  }	 
	 else if((dateMaint.getMonth() > currentTime.getMonth())){
		 F=1;
	                                                  }	 
		 
	 else if((dateMaint.getDate() > currentTime.getDate())){
		 F=1;
	                                                  }
	 else if((dateMaint.getDate() === currentTime.getDate())){
		 if((dateMaint.getTime() >= currentTime.getTime())){
			F=1; 
		                                                   }
	                                                         }
	              }
	 
	 
	/*  alert(F);
	 alert(time);
	 alert(dateMaint.getDate());
	 alert(currentTime.getDate()); */
	 if(F==1){
		 
		   var url = "saveReminder?urlid="+urlid+"&time="+time;
			$.post(url,function(data){
				if(data == -1){
					alert("FALIED TO ADD REMINDER: TRY AFTER SOME TIME");
					location.reload();
				}else{
					alert("REMINDER ADDED:CHECK IN VIEW REMINDER TAB");
					location.reload();		
				}
			});                    	  
	      
	        }
	 else{
		 alert("PLEASE ENTER VALID TIME AND DATE");
	     }
}  


 function logout(){
 	$.post("logout", function(data){
 		if(data === 'success'){
 		//	alert("sucessfully LOGGED OUT");
 			window.location.href = 'http://localhost:9001/myapp/';
 		                       }
 		else{
 			alert("failed to LOGOUT try after a minute");	
 		}
 	});
 
 }


/* function birthday(){
	
	for(i=0 ; i<mainJson.length ; i++){	
		document.getElementById(mainJson[i].urlid).style.display = "none";
         	                          }
document.getElementById("h2").innerHTML = "ADD BIRTHDAYS";
var fields = '<li class="tags hasTags">'+
         '<span class="tag_container">'+
         '<form id="bform" onsubmit="return false">'+
         '<a class="tag">NAME:</a>'+
         '<a class="tag"><input id="pname" type="text" minlength="1" autocomplete="off" required/></a>'+
         '<a class="tag">DATE OF BIRTH:</a>'+
         '<a class="tag"><input type="date" id = "bday" required/></a>'+
         '<a class="tag">PIC URL:</a>'+                           
         '<a class="tag"><input id="dp" type="text" autocomplete="off"/></a>'+
         '<a class="tag"><button type="submit" onclick = "DBday()">ADD BIRTHDAY</button></a>'+
         '</form>'+
         '</span>'+
         '</li>'


	$("#queue").html(fields);
	
                   }
                   
function DBday(){
       	
	
	url = "addbirthday?name="+$("#pname").val()
			+"&date="+$("#bday").val()+"&dpurl="+$("#dp").val();
	$.post(url,function(data){
		if(data == -1){
			alert("FAILED TO ADD BIRTHDAYS PLEASE TRY AGAIN");
		}else{
			alert("BIRTHDAY ADDED SUCESSFULLY");
		}
	});
}
 */

                                 
                                 
                                 
                                 
                                 
</script>

</body>
</html>