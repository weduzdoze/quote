<cfstoredproc procedure="dbo.loginProcess" datasource="rage">
	<cfprocparam value="#form.username#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.password#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocresult name="loginResult" >
</cfstoredproc>

<cfif loginResult.recordCount EQ 1>
	<cfset session.isLoggedIn = 1 />
	<cfset session.userID = loginResult.id />
	<cfset session.username = loginResult.username />
	<cfset session.firstname = loginResult.firstname />
	
	<cfstoredproc procedure="dbo.updateLastLoginDateTime" datasource="rage">
		<cfprocparam value="#loginResult.id#" cfsqltype="CF_SQL_IDSTAMP" />
	</cfstoredproc>
	
	<cflocation url="index.cfm?fuseaction=manage.home" addtoken="false" />
<cfelse>
	<cflocation url="index.cfm?fuseaction=user.index" addtoken="false" />
</cfif>