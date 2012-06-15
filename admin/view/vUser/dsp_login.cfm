<cfset pageTitle = "Login" />
<div id="loginContainer">
<form name="login" method="post" action=".">
	<input type="hidden" name="fuseaction" value="user.loginProcess" />
		<label for="usernameLogin">Username:</label>
	<input type="text" name="username" id="usernameLogin">
		<label for="passwordLogin">Password:</label>	
	<input type="password" name="password" id="passwordLogin">
		<input type="submit" name="submitLogin" value="Login" />	
</form>
</div>