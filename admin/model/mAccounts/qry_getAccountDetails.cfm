<cfif structKeyExists(url,'aid')>
	<cfstoredproc procedure="dbo.accountDetails" datasource="quote">
		<cfprocparam value="#url.aid#" cfsqltype="CF_SQL_IDSTAMP" />
		<cfprocresult name="accountDetails" >
	</cfstoredproc>
<cfelse>
	<cflocation url="index.cfm?fuseaction=accounts.view" addtoken="false">
</cfif>