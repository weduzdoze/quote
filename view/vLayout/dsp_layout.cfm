<cfparam name="fusebox.layout" default="" />
<cfparam name="request.msg" default="" />
<cfoutput>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript">
	  google.load("jquery", "1.4.2");
	  google.load("jqueryui", "1.7.2");
	</script>
	<link rel="stylesheet" type="text/css" href="../resources/css/main.css" />

	<div id="header">

	</div>
	
</head>

<body>
	<cfif len(request.msg)>
		<cfoutput><div class="msg">#request.msg#</div></cfoutput>
	</cfif>
	<div><img src="../../resources/images/bgTop.png" alt="" width="920" height="19"></div>
	<div class="mainBoard">
		<div class="header">
			<div class="logo">
				
			</div>
		</div>
		<div class="nav">
			<img class="divider" src="../../resources/images/divider.png">
			<a href=""><img class="navLink" id="button1" src="../../resources/images/button1.png"></a>
			<img class="divider" src="../../resources/images/divider.png">
			<a href=""><img class="navLink" id="button2" src="../../resources/images/button2.png"></a>
			<img class="divider" src="../../resources/images/divider.png">
			<a href=""><img class="navLink" id="button3" src="../../resources/images/button3.png"></a>
			<img class="divider" src="../../resources/images/divider.png">
			<a href=""><img class="navLink" id="button4" src="../../resources/images/button4.png"></a>
			<img class="divider" src="../../resources/images/divider.png">
			<a href=""><img class="navLink" id="button5" src="../../resources/images/button5.png"></a>
			<img class="divider" src="../../resources/images/divider.png">
		</div>
		<div class="content">
			<cfoutput>#fusebox.layout#</cfoutput>		
		</div>
	</div>
	<div><img src="../../resources/images/bgBottom.png" alt="" width="920" height="21"></div>
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
				$(this).attr('src','../../resources/images/button' + value + 'hover.png');
			}).mouseleave(function(){
				$(this).attr('src','../../resources/images/button' + value + '.png');
			}); 
				
		});

		});				
</script>