<cfstoredproc procedure="dbo.loginProcess" datasource="quote">
	<cfprocparam value="#form.username#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.password#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocresult name="loginResult" >
</cfstoredproc>

<cfif loginResult.recordCount EQ 1>
	<cfset session.isLoggedIn = 1 />
	<cfset session.userID = loginResult.id />
	<cfset session.username = loginResult.username />
	<cfset session.accessLevel = loginResult.accessLevel />
	
	<cfstoredproc procedure="dbo.updateLastLoginDateTime" datasource="quote">
		<cfprocparam value="#loginResult.id#" cfsqltype="CF_SQL_IDSTAMP" />
	</cfstoredproc>
	
	<cflocation url="index.cfm?fuseaction=manage.home" addtoken="false" />
<cfelse>
	<cflocation url="index.cfm?fuseaction=user.index" addtoken="false" />
</cfif>