<circuit access="public">
	<fuseaction name="check">
		<include template="act_checkSession.cfm" />
	</fuseaction>	
	<fuseaction name="index">
		
	</fuseaction>
	<fuseaction name="loginProcess">
		<include template="qry_loginProcess.cfm" />	
	</fuseaction>	
	<fuseaction name="logout">
		<include template="act_logout.cfm" />	
	</fuseaction>	
	<fuseaction name="register">
		
	</fuseaction>
	<fuseaction name="saveUser">
		<include template="qry_saveNewUser.cfm" />
	</fuseaction>		
</circuit>
