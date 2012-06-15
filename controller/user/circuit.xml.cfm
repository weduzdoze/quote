<circuit access="public">
	<fuseaction name="check">
		<do action="mUser.check" />
	</fuseaction>
	<fuseaction name="index">
		<do action="mUser.index" />
		<do action="vUser.index" />
	</fuseaction>
	<fuseaction name="loginProcess">
		<do action="mUser.loginProcess" />	
	</fuseaction>
	<fuseaction name="logout">
		<do action="mUser.logout" />	
		<do action="user.index" />
	</fuseaction>		
	<fuseaction name="register">
		<do action="mUser.register" />
		<do action="vUser.register" />
	</fuseaction>	
	<fuseaction name="saveUser">
		<do action="mUser.saveUser" />	
	</fuseaction>	
</circuit>
