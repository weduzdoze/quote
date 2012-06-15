<circuit access="public">
	<fuseaction name="view">
		<do action="mAccounts.view" />
		<do action="vAccounts.view" />
	</fuseaction>	
	<fuseaction name="saveNew">
		<do action="mAccounts.saveNew" />
		<do action="accounts.view" />
	</fuseaction>			
</circuit>
