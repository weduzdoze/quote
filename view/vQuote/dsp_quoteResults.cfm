<!---<cfoutput>
	<div id="quoteVarsLeft">
	<b>Age</b> : #form.age#<br />
	<b>Sex</b>  : #form.sex#<br />
	<b>Smoker</b>  : <cfif form.smoker EQ 1>Yes<cfelse>No</cfif><br />
	<b>Specialty</b> : #ameritasquote.specialty#<br />
	<b>State</b> : #form.state#<br />
	<b>Waiting Period</b> : #form.waitingPeriod#<br />
	</div>
	<div id="quoteVarsRight">		
	<b>To Age</b>  : #form.toAge#<br />
	<b>Monthly Benefit</b>  : #form.monthlyBenefit#<br />	
	<b>Residual 6% Compound</b>  : <cfif form.residualCompound EQ 1>Yes<cfelse>No</cfif><br />
	<b>Residual 3% Simple</b>  : <cfif form.residualSimple EQ 1>Yes<cfelse>No</cfif><br />
	<b>Future Purchase Option</b>  : #form.futurePurchase#<br />
	</div>		
</cfoutput>--->
<div id="quoteVarsBottom">
	<br />

	<cfif !ameritasQuote.recordCount AND !guardianQuote.recordCount AND !metLifeQuote.recordCount AND !principalQuote.recordCount AND !standardQuote.recordCount>
		<h2>Sorry! Your quote could not be <br />calculated. Please try again later.</h2>	
	<cfelse>
<table>	
	<tr>
		<th style="width:120px;">Company</th>
		<th style="width:60px;">Monthly</th>
		<th style="width:60px;padding-left:20px">Annual</th>
	</tr>

	<cfoutput query="ameritasQuote">
		<tr>
			<td class="companyName">#name#</td>
			<td class="quoteValues"><cfif len(monthlyPremium) LT 1>N/A<cfelse>#DollarFormat(monthlyPremium)#</cfif></td>
			<td class="quoteValues">#DollarFormat(annualPremium)#</td>
		</tr>
	</cfoutput>
	<cfoutput query="guardianQuote">
		<tr>
			<td class="companyName">#name#</td>
			<td class="quoteValues"><cfif len(monthlyPremium) LT 1>N/A<cfelse>#DollarFormat(monthlyPremium)#</cfif></td>
			<td class="quoteValues">#DollarFormat(annualPremium)#</td>
		</tr>
	</cfoutput>	
	<cfoutput query="metLifeQuote">
		<tr>
			<td class="companyName">#name#</td>
			<td class="quoteValues"><cfif len(monthlyPremium) LT 1>N/A<cfelse>#DollarFormat(monthlyPremium)#</cfif></td>
			<td class="quoteValues">#DollarFormat(annualPremium)#</td>
		</tr>
	</cfoutput>	
	<cfoutput query="principalQuote">
		<tr>
			<td class="companyName">#name#</td>
			<td class="quoteValues"><cfif len(monthlyPremium) LT 1>N/A<cfelse>#DollarFormat(monthlyPremium)#</cfif></td>
			<td class="quoteValues">#DollarFormat(annualPremium)#</td>
		</tr>
	</cfoutput>	
	<cfoutput query="standardQuote">
		<tr>
			<td class="companyName">#name#</td>
			<td class="quoteValues"><cfif len(monthlyPremium) LT 1>N/A<cfelse>#DollarFormat(monthlyPremium)#</cfif></td>
			<td class="quoteValues">#DollarFormat(annualPremium)#</td>
		</tr>
	</cfoutput>											
</table>
		
	</cfif>
</div>
