<cfstoredproc procedure="dbo.saveUser" datasource="rage">
	<cfprocparam value="#form.username#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.password#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.firstname#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.lastname#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.email#" cfsqltype="CF_SQL_VARCHAR" />
</cfstoredproc>