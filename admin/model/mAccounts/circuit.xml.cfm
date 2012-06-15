<circuit access="public">
	<fuseaction name="view">
		<include template="qry_getAccounts.cfm" />
		<include template="qry_getAccessLevels.cfm" />
	</fuseaction>	
	<fuseaction name="saveNew">
		<include template="qry_saveNewAdmin.cfm" />
	</fuseaction>	
	<fuseaction name="edit">
		<include template="qry_getAccessLevels.cfm" />
		<include template="qry_getAccountDetails.cfm" />
	</fuseaction>			
</circuit>
