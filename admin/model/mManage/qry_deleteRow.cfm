<cfstoredproc procedure="dbo.deleteRow" datasource="rage">
	<cfprocparam value="#url.t#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#url.id#" cfsqltype="CF_SQL_IDSTAMP" />
</cfstoredproc>