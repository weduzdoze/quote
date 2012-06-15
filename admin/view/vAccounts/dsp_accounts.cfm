<cfif session.accessLevel EQ 1>
	
	<button id="addAccountButton">Add Admin</button>
	<div id="addAccountForm">
		<h1>Administrators</h1>
		<form name="addAccountForm" method="post" action="index.cfm?fuseaction=accounts.saveNew">
			<table name="addAccountTable" id="userTable">
				<tr>
					<th>Username</th>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password"></td>					
				</tr>
				<tr>
					<th>Confirm</th>
					<td><input type="password" name="confirm"></td>					
				</tr>	
				<tr>
					<th>Access Level</th>
					<td>
						<select name="accessLevel">
							<cfoutput query="getAccessLevels">
								<option name="#ID#" value="#accessLevel#">#accessLevel#</option>
							</cfoutput>
						</select>
					</td>
				</tr>
				<tr>
					<th><button name="hideAdminForm" id="hideAdminForm">Hide</button></th>
					<td><input type="submit" value="Add Admin"></td>
				</tr>			
			</table>
						
		</form>
	</div>
	<br />
	<div id="accountsTableDiv">
		<table id="userTable" name="userTable">
			<tr>
				<th>Username</th>
				<th>Access Level</th>
				<th>Last Login</th>
			</tr>
			<cfoutput query="users">
				<tr>
					<td>#username#</td>
					<td>#accessLevel#</td>
					<cfif len(LastLoginDateTime) GT 0>	
						<td>#DateFormat(LastLoginDateTime,'medium' )# #TimeFormat(LastLoginDateTime)#</td>
					<cfelse>
						<td>Never</td>
					</cfif>		
				</tr>
			</cfoutput>
		</table>
	</div>
<cfelse>
	You don't have the right.
</cfif>		
<script type="text/javascript" src="resources/js/accounts.js"></script>