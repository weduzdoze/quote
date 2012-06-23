<cfstoredproc procedure="saveQuote" datasource="quote" >
	<cfprocparam value="#form.companyID#" cfsqltype="CF_SQL_IDSTAMP">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR">
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_INTEGER">
	<cfprocparam value="#form.smoker#" cfsqltype="CF_SQL_BIT">
	<cfprocparam value="#form.specialtyID#" cfsqltype="CF_SQL_IDSTAMP" >
	<cfprocparam value="#form.riskClass#" cfsqltype="CF_SQL_VARCHAR">
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR">
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_INTEGER">
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_INTEGER">
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_MONEY">
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT">
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT">
	<cfprocparam value="#form.futurePurchase#" cfsqltype="CF_SQL_MONEY">
	<cfprocparam value="#form.monthlyPremium#" cfsqltype="CF_SQL_MONEY">
	<cfprocparam value="#form.annualPremium#" cfsqltype="CF_SQL_MONEY">	
</cfstoredproc>
