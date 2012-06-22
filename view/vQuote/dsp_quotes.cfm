<cfoutput>
<div id="quoteHeader">
	<img src="#this.resourcePath#/images/instantquote.png" alt="Instant Quote">
</div>
<div id="quoteLeft">

<form name="getQuote" id="getQuote" method="post" action=".">
	<input type="hidden" name="fuseaction" value="quote.get" />
	
	<table name="quoteFormTable" id="quoteFormTable">
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
				<select name="specialty">
					<cfloop query="getSpecialties">
						<option value="#getSpecialties.ID#">#getSpecialties.name#</option>
					</cfloop>
				</select>
			</td>
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
		</tr>	
		<tr>
			<th>To Age:</th>
			<td>
				<select name="toAge">
					<option value="67">67</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>Monthly Benefit:</th>
			<td>
				<select name="monthlyBenefit">
					<option value="10000">$10,000</option>
					<option value="2800">$2,800</option>
				</select>
			</td>
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
		</tr>														
	</table>
	<input type="submit" name="submitQuote" value="Calculate Quote" id="submitQuote">
</form>
</cfoutput>
</div>
<div id="quoteRight">
	
</div>


<script type="text/javascript">
$(document).ready(function() { 
	jQuery('form[id*=getQuote]').live('submit', function(e) {
		e.preventDefault();
		var formdata = $(this).serialize();
		$.ajax({			
			type: 'post',
			url: 'index.cfm?fuseaction=quote.get',
			dataType: 'html',
			data: formdata,
			success: function(data){
				$('#quoteRight').html(data);
			}			
	});	
	}); 
})
			

</script>
