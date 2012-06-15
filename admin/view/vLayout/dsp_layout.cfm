<cfparam name="url.ajax" default="">
<cfif url.ajax NEQ "true">
<cfparam name="fusebox.layout" default="" />
<cfparam name="request.msg" default="" />
<cfparam name="pageTitle" default="Manage" />
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
	<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
	
	<div id="headerBannerLeft"></div>
	<div id="headerBanner">
		<span id="headerTitle">Callahan Financial</span><!---<span id="breadcrumbs">Test->Yup-></span>--->
		<cfif StructKeyExists(session,'isLoggedIn')>
			<a class="headerLogin" href="index.cfm?fuseaction=user.logout">Logout</a>			
		<cfelse>
			<span class="headerTimeStamp">#DateFormat(now(),'medium')# #TimeFormat(now())#</span>	
		</cfif>
	</div>
	<div id="headerLogo">
		<img src="/admin/resources/images/logoPlaceholder.gif" alt="logo">
	</div>	
	
<!---	<div id="pageTitle">#pageTitle#</div>	
		<div id="headerUser">
		<cfif !StructKeyExists(session,'isLoggedIn')>
			<a class="headerLink" href="index.cfm?fuseaction=user.index">Login</a>
		<cfelse>
			<span class="welcome">Welcome, #session.username#!</span><br />
			<a class="headerLink" href="index.cfm?fuseaction=user.logout">Logout</a>
		</cfif>	
		</div>--->	
</head>

<body>
	<cfif len(request.msg)>
		<cfoutput><div class="msg">#request.msg#</div></cfoutput>
	</cfif>
	<div id="leftNavTop"></div>
	<div class="leftNav">
		<div id="leftNavHead">
			Admin
		</div>
		<ul>
			<li><a class="linkButton" href="index.cfm?fuseaction=manage.home">Home</a></li>
			<li><a class="linkButton" href="index.cfm?fuseaction=applications.view">Applications</a></li>
			<li><a class="linkButton" href="index.cfm?fuseaction=accounts.view">Users</a></li>
			
		</ul>
	</div>
	<div id="leftNavBottom"></div>
	<!---<div id="contentTop"></div>--->
	<div class="content">
		<cfoutput>#fusebox.layout#</cfoutput>		
	</div>
	<!---<div id="contentBottom"></div>--->
	<div class="rightNav">
		
	</div>

</body>			
				  	  
<div class="footer">
	<div id="footerTitle">Mandell Designs</div>
</div>			

</html>
</cfoutput>
</cfif>
<script type="text/javascript">
	$(document).ready(function(){
		$('#appLinkButton').hover(function(){
			var src = $(this).attr("src").match(/[^\.]+/) + "hover.png";
            console.log(src);
			$(this).attr("src", src);
		});
	});
</script>