<cfstoredproc procedure="dbo.getAmeritasQuote" datasource="quote">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.smoker#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.specialty#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.futurePurchase#" cfsqltype="CF_SQL_MONEY" />
	<cfprocresult name="ameritasQuote" >
</cfstoredproc>
<cfstoredproc procedure="dbo.getGuardianQuote" datasource="quote">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.smoker#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.specialty#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.futurePurchase#" cfsqltype="CF_SQL_MONEY" />
	<cfprocresult name="guardianQuote" >
</cfstoredproc>
<cfstoredproc procedure="dbo.getMetLifeQuote" datasource="quote">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.smoker#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.specialty#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT" />
	<cfprocresult name="MetLifeQuote" >
</cfstoredproc>
<cfstoredproc procedure="dbo.getPrincipalQuote" datasource="quote">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.smoker#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.specialty#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT" />
	<cfprocresult name="PrincipalQuote" >
</cfstoredproc>
<cfstoredproc procedure="dbo.getStandardQuote" datasource="quote">
	<cfprocparam value="#form.sex#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.age#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.specialty#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.state#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.waitingPeriod#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.toAge#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.monthlyBenefit#" cfsqltype="CF_SQL_VARCHAR" />
	<cfprocparam value="#form.residualCompound#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.residualSimple#" cfsqltype="CF_SQL_BIT" />
	<cfprocparam value="#form.futurePurchase#" cfsqltype="CF_SQL_MONEY" />
	<cfprocresult name="standardQuote" >
</cfstoredproc>