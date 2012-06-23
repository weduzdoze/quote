<cfoutput>
<select name="specialtyID">
	<cfloop query="getSpecialties">
		<option value="#getSpecialties.ID#">#getSpecialties.name#</option>
	</cfloop>
</select>
</cfoutput>