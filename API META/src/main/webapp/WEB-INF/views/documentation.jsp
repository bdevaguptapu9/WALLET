<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!-- <link rel="icon" type="image/png" href="https://urlmeta.org/assets/img/favicon.png"> -->
<link rel="preload" as="style" href="https://c.disquscdn.com/next/embed/styles/lounge.83b5b8f9aa16033ab1cb9cb54bf59140.css">
<title>Documentation</title>
</head>
<body>
  <header>
		<div class="container">
			<h1 style="margin:20px;">URL Meta</h1>
			<h2 style="margin:10px;">API Docs</h2>
			<p class="menu">
				<a href="#" class="item">Home</a>
			</p>
		</div>
 </header>
   
   <div class="container" style="width:60%;">
		<section name="basics" id="basics">
			<h3><a href="https://urlmeta.org/dev-api.html#basics">API Basics</a></h3>
			<p>URL Meta API is free and open to everyone. You do not need to authorize or proide an API key. Just get started right away and build us some cool stuff.</p>
			<p>
				</p><table>
					<tbody><tr>
						<td>API Endpoint</td>
						<td>
							<span class="codeline">http://localhost:9001/api/?url=</span><br>
							Should always be accessed over <span class="codeline">http://</span>
						</td>
					</tr>
					<tr>
						<td>Method</td>
						<td>
							<span class="codeline">GET</span>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center;border-bottom:0;padding:20px;"><b>Parameters</b></td>
					</tr>
					<tr>
						<td><span class="codeline">url</span>
						</td>
						<td>
							<i>required</i><br>
							Accepts the target URL along with scheme i.e: <span class="codeline">http</span> or <span class="codeline">https</span>
						</td>
					</tr>
					
				</tbody></table>
			<p></p>
		</section>

	<section name="response" id="response">
			<h3><a href="https://urlmeta.org/dev-api.html#response">Response</a></h3>
			<p>Following objects are returned in response</p>
			<p>
				</p><table>
					<tbody><tr>
						<td>
							<span class="codeline">result</span>
						</td>
						<td>
							<table>
								<tbody><tr>
									<td>
										<span class="codeline">status</span>
									</td>
									<td>
										<span class="codeline">OK</span> or <span class="codeline">ERROR</span>
									</td>
								</tr>
								<tr>
									<td>
										<span class="codeline">reason</span>
									</td>
									<td>
										Will be present only if the <span class="codeline">status</span> is <span class="codeline">ERROR</span>
									</td>
								</tr>
						
								</tbody></table>
						</td>
					</tr>
					<tr>
						<td>
							<span class="codeline">meta</span>
						</td>
						<td>
							Will contain all the meta about URL
						</td>
					</tr>
				</tbody></table>
				<p>You can expect following attributes about a URL in <span class="codeline">meta</span> object:</p>
				<p>
					</p><ul class="ul">
						<li>Page URL</li>
						<li>Page title</li>
						<li>Description</li>
						<li>Keywords</li>
						<li>Favicon</li>
						<li>Image</li>
						<li>Content Type</li>
						
					</ul>
				<p></p>
				<p>
					Of course, all the attributes depend on their existance in the target page.
				</p>
		</section>
		<section name="example-response" id="example-response">
			<h3><a href="https://urlmeta.org/dev-api.html#example-response">Example Response</a></h3>
			<div class="code" style="display: block;">
				<div class="head">Successful Call</div>
			<div class="body">{
 "result": {
   "status": "OK"
 },
 "meta": {
   "url": "https://startupbundle.com/",
   "type": "text/html",
   "title": "Startup Bundle - The best and biggest resource bundle for startups",
   "keywords":"meta description,on page seo,title tags",
   "image": "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
   "description": "This bundle contains all the tools and resource a startup could use. All the stuff on a massive discounted price. upto 98% off.",
   "favicon": "https://startupbundle.com/favicon.png"
 }
}
</div>
		</div>
	
		
		<p></p>
		<div class="code" style="display: block;">
				<div class="head">Error</div>
			<div class="body">{
 "result": {
   "status": "ERROR",
   "code": 4,
   "reason": "Could not find what you were looking for."
 }
}
</div>
		</div>
		<p></p>
		</section>
		<section name="error-codes" id="error-codes">
			<h3><a href="https://urlmeta.org/dev-api.html#error-codes">Error Codes</a></h3>
			<table>
					<tbody><tr>
						<th>
							Code
						</th>
						<th>
							Description
						</th>
					</tr>
					<tr>
						<td>
							<span class="codeline">1</span>
						</td>
						<td>
						Required parameter <span class="codeline">url</span> was not found
						</td>
					</tr>
					<tr>
						<td>
							<span class="codeline">2</span>
						</td>
						<td>
						<span class="codeline">url</span> was present but not valid.
						<div class="code" style="box-shadow:none; padding:2px;">Mostly because URL scheme was missing. It must have <i>http://</i> or <i>https://</i></div>
						</td>
					</tr>
					
					<tr>
						<td>
							<span class="codeline">3</span>
						</td>
						<td>
							http response status code was greater than 400.
						</td>
					</tr>
					<tr>
						<td>
							<span class="codeline">4</span>
						</td>
						<td>
							Target URL did not respond within 5 seconds.
						</td>
					</tr>
					<tr>
						<td>
							<span class="codeline">5</span>
						</td>
						<td>
							There was an error in parsing HTML of website. Normally, because of an internal error.
						</td>
					</tr>
				</tbody></table>
		</section>
		<section name="api-terms" id="api-terms">
			<h3><a href="https://urlmeta.org/dev-api.html#api-terms">Terms of API usage</a></h3>
			<p>URLMeta API is totaly free to use. You can make as many requests as you wish. But to keep it free, you must not abuse it's use.</p>
		</section>
		<section name="contribute" id="contribute">
			<h3><a href="https://github.com/bdevaguptapu9">Contribute to this service</a></h3>
			<p>There are a lot of ways you can contribute to this service:</p>
			<ul>
				<li>Share it - Let others know about and save their time too.</li>
				<li>Write sample code - Write the sample codes and tutorials in a programming language you know. We'll put that code and give you the credit of it.</li>
				<li>Point out bugs - If there's a bug you've found then <a href="https://github.com/bdevaguptapu9">open an issue</a>.</li>
				<li>Suggest something usefull - If you think we can use another tool to make this API more powerfull then do not hesitate to tell us.</li>
			</ul>
	
		</section>
	</div>

	<footer>
		<div class="links">
		</div>
	</footer>

	<link rel="stylesheet" type="text/css" href="/api/resources/normal.css">
	<link rel="stylesheet" type="text/css" href="/api/resources/style.css">



</body>
</html>