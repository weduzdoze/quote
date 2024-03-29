﻿<cfoutput>
<div id="addAdmitQuoteForm">
<form name="getQuote" id="getQuote" method="post" action=".">
	<input type="hidden" name="fuseaction" value="quotes.save" />
	
	<table name="quoteFormTable" id="quoteFormTable">
		<tr>
			<th>Company:</th>
			<td>
				<select name="companyID">
					<cfloop query="getCompanies">
						<option value="#getCompanies.ID#">#getCompanies.name#</option>
					</cfloop>
				</select>
			</td>
		</tr>
		<tr>
			<th>Age:</th>
			<td><input type="number" name="age" id="quoteAge" value="40"></td>
		</tr>
		<tr>
			<th>Sex:</th>
			<td>
				<select name="sex">
					<option value="M">Male</option>
					<option value="F">Female</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>Smoker:</th>
			<td>
				<select name="smoker">
					<option value="1">Yes</option>
					<option selected value="0">No</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>Medical Specialty:</th>
			<td>
				<div id="specialtyDropDown"></div>
			</td>
			<td><a href="" id="addSpecialty">Add</a></td>
		</tr>
		<tr>
			<th>Risk Class:</th>
			<td><input type="text" name="riskClass"></td>
		</tr>
		<tr>
			<th>State:</th>
			<td>
				<select name="state">
					<option value="NJ">New Jersey</option>
				</select>
			</td>
		</tr>	
		<tr>
			<th>Waiting Period:</th>
			<td>
				<select name="waitingPeriod">
					<option value="90">90</option>
				</select>
			</td>
			<td><a href="">Add</a></td>
		</tr>	
		<tr>
			<th>To Age:</th>
			<td>
				<select name="toAge">
					<option value="67">67</option>
				</select>
			</td>
			<td><a href="">Add</a></td>
		</tr>
		<tr>
			<th>Monthly Benefit:</th>
			<td>
				<select name="monthlyBenefit">
					<option value="10000">$10,000</option>
					<option value="2800">$2,800</option>
				</select>
			</td>
			<td><a href="">Add</a></td>
		</tr>	
		<tr>
			<th>Residual 6% Compound:</th>
			<td>
				Yes<input type="radio" checked name="residualCompound" value="1">
				No<input type="radio"  name="residualCompound" value="0">
			</td>
		</tr>	
		<tr>
			<th>Residual 3% Simple:</th>
			<td>
				Yes<input type="radio" name="residualSimple" value="1">
				No<input type="radio" checked name="residualSimple" value="0">
			</td>
		</tr>
		<tr>
			<th>Future Purchase Option:</th>
			<td>
				<select name="futurePurchase">
					<option value="5000">$5,000</option>
				</select>
			</td>
			<td><a href="">Add</a></td>
		</tr>
		<tr>
			<th>Monthly Premium:</th>
			<td><input type="text" name="monthlyPremium"></td>
		</tr>
		<tr>
			<th>Annual Premium:</th>
			<td><input type="text" name="annualPremium"></td>
		</tr>																
	</table>
	<input type="submit" name="saveQuote" value="Save Quote" id="saveQuote">
</form>
</div>

<div id="addSpecialtyDialog" style="display:none;">
	<form name="addSpecialtyForm" method="post" action="." id="saveSpecialtyForm">
		<input type="hidden" name="fuseaction" value="manage.saveSpecialty">
		<input type="text" name="newSpecialtyValue">
		<input type="submit" value="Add Specialty">
	</form>
</div>

</cfoutput>

<script type="text/javascript">

$(document).ready(function() {
	/* load dynamic dropdowns */
	$('#specialtyDropDown').load('index.cfm?fuseaction=manage.getSpecialties&ajax=true');
	
	$('#addSpecialtyDialog').dialog({title:"Add Specialty",autoOpen:false});
	$('#addSpecialty').click(openDialog);
		
	
	$('#saveSpecialtyForm').submit(function() {
	  var data = $(this).serializeArray();
	  	$.post("index.cfm?fuseaction=manage.saveSpecialty", 
		       { newSpecialtyValue: data[1].value },
			     function(data){
				 	$('#specialtyDropDown').load('index.cfm?fuseaction=manage.getSpecialties&ajax=true');
					$('#addSpecialtyDialog').dialog('close');
				 });
	  return false;
	});  
});
	var openDialog = function(e){
		e.preventDefault();
		$('#addSpecialtyDialog').dialog('open');
	};
	
</script>
