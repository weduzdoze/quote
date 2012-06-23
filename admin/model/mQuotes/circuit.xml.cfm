<circuit access="public">
	<fuseaction name="view">
		<include template="qry_getQuotes.cfm" />
	</fuseaction>
	<fuseaction name="new">
		<include template="qry_getCompanies.cfm" />
		<include template="qry_getSpecialties.cfm" />
	</fuseaction>	
	<fuseaction name="save">
		<include template="qry_saveQuote.cfm" />
	</fuseaction>	
</circuit>
