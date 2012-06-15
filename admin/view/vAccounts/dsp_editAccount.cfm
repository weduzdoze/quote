<cfif session.accessLevel EQ 1>
<cfoutput query="accountDetails">
<div id="editAccountForm">
		<h1>Administrators</h1>
		<form name="addAccountForm" method="post" action="index.cfm?fuseaction=accounts.update">
			<input type="hidden" name="userID" id="userID" value="#ID#">
			<table name="addAccountTable" id="userTable">
				<tr>
					<th>Username</th>
					<td><input type="text" name="username" value="#username#"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td>********</td>					
				</tr>	
				<tr>
					<th>Access Level</th>
					<td>
						<select name="accessLevel">
							<cfloop query="getAccessLevels">
								<option <cfif getAccessLevels.accessLevel EQ accountDetails.accessLevel>selected</cfif> name="#ID#" value="#accessLevel#">#accessLevel#</option>
							</cfloop>
						</select>
					</td>
				</tr>
				<tr>
					<th><button id="deleteAdmin">Delete</button></th>
					<td><input type="submit" value="Save Admin"></td>
				</tr>			
			</table>					
		</form>
	</div>
</cfoutput>	
</cfif>
<script type="text/javascript">
	$(document).ready(function(){
		$('#deleteAdmin').click(function(e){
			e.preventDefault();
			var id = $('#userID').val();
			var deleteUser = confirm('Are you sure you want to delete this account? This can not be undone!');
			if (deleteUser){
				$.ajax({
					method: 'post',
					url: 'index.cfm?fuseaction=manage.delete&t=strator&id=' + id,
					success: function(){
						window.location = 'index.cfm?fuseaction=accounts.view';
					}
				});
			}
		});
	});
</script>