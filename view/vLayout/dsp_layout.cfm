<cfparam name="fusebox.layout" default="" />
<cfparam name="request.msg" default="" />
<cfparam name="url.ajax" default="false" />
<cfif myfusebox.originalfuseaction NEQ "get">	
<cfoutput>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<title>Callahan Financial</title>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript">
	  google.load("jquery", "1.4.2");
	  google.load("jqueryui", "1.7.2");
	</script>
	<link rel="stylesheet" type="text/css" href="..#this.resourcePath#/css/main.css" />

	<div id="header">

	</div>
	
</head>

<body>
	<cfif len(request.msg)>
		<cfoutput><div class="msg">#request.msg#</div></cfoutput>
	</cfif>
	<div><img src="#this.resourcePath#/images/bgTop.png" alt="" width="920" height="19"></div>
	<div class="mainBoard">
		<div class="headerLeft">
		</div>
		<div class="headerRight">
			<img class="bar" src="#this.resourcePath#/images/bar1.png">
			<a href=""><img class="linkLI" src="#this.resourcePath#/images/contact.png"></a>
			<img class="circle" src="#this.resourcePath#/images/circle.png">
			<a href=""><img class="linkLI" src="#this.resourcePath#/images/sitemap.png"></a>
			<img class="social" src="#this.resourcePath#/images/social.jpg">
			
		</div>
		<div class="headerText">
			<img class="social" src="#this.resourcePath#/images/callToday.png">
		</div>
		
		<div class="nav">
			<img class="divider" src="#this.resourcePath#/images/divider.png">
			<a href="index.cfm"><img class="navLink" id="button1" src="#this.resourcePath#/images/button1.png"></a>
			<img class="divider" src="#this.resourcePath#/images/divider.png">
			<a href="index.cfm?fuseaction=quote.start"><img class="navLink" id="button2" src="#this.resourcePath#/images/button2.png"></a>
			<img class="divider" src="#this.resourcePath#/images/divider.png">
			<a href="index.cfm"><img class="navLink" id="button3" src="#this.resourcePath#/images/button3.png"></a>
			<img class="divider" src="#this.resourcePath#/images/divider.png">
			<a href="index.cfm"><img class="navLink" id="button4" src="#this.resourcePath#/images/button4.png"></a>
			<img class="divider" src="#this.resourcePath#/images/divider.png">
			<a href="index.cfm"><img class="navLink" id="button5" src="#this.resourcePath#/images/button5.png"></a>
			<img class="divider" src="#this.resourcePath#/images/divider.png">			
		</div>
		
		<div class="content">
			<cfoutput>#fusebox.layout#</cfoutput>		
		</div>
	</div>
	<div><img src="#this.resourcePath#/images/bgBottom.png" alt="" width="920" height="21"></div>
</body>			
				  	  
<div class="footer">

</div>			

</html>
</cfoutput>
<script type="text/javascript">
	$(document).ready(function(){		
		var buttons = ['1','2','3','4','5'];
		jQuery.each(buttons, function(index,value) {
			$('#button' + value).mouseenter(function() {
				$(this).attr('src','/resources/images/button' + value + 'hover.png');
			}).mouseleave(function(){
				$(this).attr('src','/resources/images/button' + value + '.png');
			}); 				
		});
	});				
</script>
<cfelse>

</cfif>
