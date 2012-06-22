<div id="quoteListTable">
<table>
	<tr>		
		<th>Company</th>
		<th>Age</th>
		<th>Gender</th>		
		<th>Date Created</th>
	</tr>
<cfoutput query="getAdminQuotes">
	<tr>
		<td>#getAdminQuotes.name#</td>			
		<td>#getAdminQuotes.age#</td>
		<td>			
			<cfif getAdminQuotes.sex EQ "M">Male<cfelse>Female</cfif>
		</td>	
		<td>#DateFormat(getAdminQuotes.dateCreated,'medium' )#</td>
	</tr>		
</cfoutput>
</table>
</div>
<div id="addQuote">
	<h2><a href="index.cfm?fuseaction=quotes.new">Add Quote</a></h2>
</div>