<circuit access="public">
	<fuseaction name="home">
		
	</fuseaction>
	<fuseaction name="delete">
		<include template="qry_deleteRow.cfm" />
	</fuseaction>	
	<fuseaction name="getSpecialties">
		<include template="../mQuotes/qry_getSpecialties.cfm" />
		<include template="act_loadSpecialtiesDropdown.cfm" />
	</fuseaction>
	<fuseaction name="saveSpecialty">
		<include template="qry_saveSpecialty.cfm" />
	</fuseaction>		
</circuit>
