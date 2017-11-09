# Overview
1.  WALLET is a Web application in which you can Search, Store, Classify and Get reminded about web links and its related information    simply and beautifully.
2.  Put articles, videos, images or pretty much any web link into Wallet with a single button Click directly from your browser.
3.  Favorite and Set reminders for web links to Browse the web more conveniently.
4.  When you find something, you want to view later, put it in your wallet.
5.  There are 3 components of application:
    1)	**API** 
    2)	**CHROME EXTENSION**
    3)	**WEB APPLICATION**
## API:
1.	Pass any **URL** as parameter and make API call to get all the **meta** information of the web page like URL, type, title, keywords, image, description and favicon.
2.	All the details are returned by **web scraping** with **JSOUP** java library.
3.	For more detailed description of API please install and visit URL: http://localhost:9001/api/documentation
4.  Example API Call:  http://localhost:9001/api/?url=https://startupbundle.com/
&nbsp;![alt text](https://user-images.githubusercontent.com/22897611/32630336-2ef8d986-c551-11e7-9135-934ff3bc45f4.PNG) <br />
## Chrome Extension:
1.	You can just **Save** any web link that is open on chrome browser with a single click on chrome extension.
2.	When click on chrome extension on valid open page and if your logged in on your web application its saves the link to your list and prompts page saved. If you’re not logged in on to your web application, it prompts to login. 
3.  ICON: &nbsp; ![alt text](https://user-images.githubusercontent.com/22897611/32630403-56922ee8-c551-11e7-80f7-6e91728ff244.PNG)
4.  CHROME EXTENSION CLICKED BEFORE LOGGNG INTO WEB APPLICATION:
    ![alt text](https://user-images.githubusercontent.com/22897611/32630410-5b4fff00-c551-11e7-92ec-ea9d8dea7f87.PNG)
5.  CHROME EXTENSION CLICKED AFTER LOGGNG INTO WEB APPLICATION:  
    ![alt text](https://user-images.githubusercontent.com/22897611/32630414-5db8123c-c551-11e7-9ee7-6e4c4969f1cc.PNG)
## Web Application:
1.	Create an account by providing Email id and topic of interests so that you can login and logout of your account on web application.
2.	You can **store, search, delete** you web links. When you store a web link its automatically calls API in the back end and scrapes the web page and displays information beautifully. 
3.	When you add a web link. Its automatically **categorized** based on its type like article, image or a video. however, you also **Favorite** your web links.
4.	You can also set the **reminders** for web links. Reminder shoots out an email of the web link on that time and date.
5.	Based on the topic of interests you choose, you will be recommended some articles and web sites. <br /> <br/> 
    ![alt text](https://user-images.githubusercontent.com/22897611/32630400-526ce9f2-c551-11e7-99c2-7c99b6b1c6ad.PNG) <br/>
## Environment Setup
1.	Install the latest Maven (http://maven.apache.org/download.cgi)
2.	Install the Eclipse 4+ (http://www.eclipse.org/)
3.	Install the Maven Eclipse Plug-in using the update site (http://www.eclipse.org/m2e/download/) (The latest Eclipse should have Maven plug-in installed so you may not need to do this step)
## Importing the Project into Eclipse
1.	File->Import->Maven->Existing Maven Projects
2.	Select the directory containing the pom.xml file
3.	Finish
## Building the Project for the First Time
1.	Right-click on the project root folder->Maven->Update Project
## Running the Project Locally
1.	Right-click on source folder ->Run As->Run on server->Select the server->Ok 
2.	Verify the running process in your web browser by the following URLs:<br />
    •	http://localhost:9001/myapp <br />
    •	http://localhost:9001/myapp/signuplogin <br />
    •	http://localhost:9001/myapp/loginsuccess <br />
API <br />
    •	http://localhost:9001/api/documentation <br />
    •	http://localhost:9001/api/?url=https://www.google.com/
 
## Running the Chrome Extension:
1.	Open Chrome browser press on 3 dotted icon which opens all the menu then click on <br />
    More tools->Extensions->Developer mode->Load unpacked Extension then select the folder containing chrome extension locally.
2.	An icon ![alt text](https://user-images.githubusercontent.com/22897611/32630403-56922ee8-c551-11e7-80f7-6e91728ff244.PNG) appears beside 3 dotted windows which indicates Wallet is active.


