<circuit access="public">
	<fuseaction name="view">
		<include template="qry_getAccounts.cfm" />
		<include template="qry_getAccessLevels.cfm" />
	</fuseaction>	
	<fuseaction name="saveNew">
		<include template="qry_saveNewAdmin.cfm" />
	</fuseaction>		
</circuit>
