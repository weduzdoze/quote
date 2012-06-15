<cfif form.password EQ form.confirm>
	<cfstoredproc procedure="dbo.saveAdmin" datasource="quote">
		<cfprocparam value="#form.username#" cfsqltype="CF_SQL_VARCHAR" />
		<cfprocparam value="#form.password#" cfsqltype="CF_SQL_VARCHAR" />
		<cfprocparam value="#form.accessLevel#" cfsqltype="CF_SQL_INTEGER" />
	</cfstoredproc>	
</cfif>

