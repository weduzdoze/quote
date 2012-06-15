<cfset pageTitle = "Register" />
<form name="registerForm" method="post" action=".">
	<input type="hidden" name="fuseaction" value="user.saveUser" />
	
	<input type="text" name="username" />Username<br />
	<input type="text" name="firstName" />First Name<br />
	<input type="text" name="lastName" />Last Name<br />
	<input type="text" name="email" />Email<br />
	<input type="password" name="password" />Password<br />
	<input type="password" name="confirmPassword" />Confirm<br />
	
	<input type="submit" name="submitRegister" value="Register" />
</form>