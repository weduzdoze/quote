<cfif right(cgi.script_name, Len("index.cfm")) NEQ "index.cfm" AND right(cgi.script_name, 3) NEQ "cfc">
		<cflocation url="index.cfm" addtoken="no">
	</cfif>
	HELLO
<cfsilent>
<cfapplication 
	name="rage" 
	sessionmanagement="Yes" 					
	sessiontimeout="#CreateTimeSpan(0,0,5,0)#" 	
	clientmanagement="Yes">
<cfset request.dsn = "rage">
</cfsilent>
