<cfif !StructKeyExists(session,'isLoggedIn') AND myfusebox.originalcircuit NEQ 'user'>
	<cfif !structKeyExists(form,'ajax')>
		<cflocation url="index.cfm?fuseaction=user.index" addtoken="false">
	</cfif>	
</cfif>