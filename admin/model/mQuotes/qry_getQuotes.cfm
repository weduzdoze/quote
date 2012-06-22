<cfparam name="column" default="companyID">
<cfparam name="filter" default="DESC">

<cfquery name="getAdminQuotes">
	SELECT q.ID,q.sex,q.age,q.dateCreated,c.name FROM quotes q
	LEFT JOIN companies c
	ON q.companyID = c.ID
	ORDER BY #column# #filter#
</cfquery>