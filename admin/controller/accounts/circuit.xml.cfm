<circuit access="public">
	<fuseaction name="view">
		<do action="mAccounts.view" />
		<do action="vAccounts.view" />
	</fuseaction>	
	<fuseaction name="saveNew">
		<do action="mAccounts.saveNew" />
		<relocate url="/admin/index.cfm?fuseaction=accounts.view" type="client"/>
		<do action="accounts.view" />
	</fuseaction>
	<fuseaction name="edit">
		<do action="mAccounts.edit" />
		<do action="vAccounts.edit" />
	</fuseaction>				
</circuit>
