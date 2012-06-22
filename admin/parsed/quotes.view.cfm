<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: quotes --->
<!--- fuseaction: view --->
<cftry>
<!--- do action="user.check" --->
<!--- do action="mUser.check" --->
<cfset myFusebox.thisPhase = "preprocessFuseactions">
<cfset myFusebox.thisCircuit = "mUser">
<cfset myFusebox.thisFuseaction = "check">
<cftry>
<cfoutput><cfinclude template="../model/mUser/act_checkSession.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "act_checkSession.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_checkSession.cfm in circuit mUser which does not exist (from fuseaction mUser.check).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="mQuotes.view" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mQuotes">
<cfset myFusebox.thisFuseaction = "view">
<cftry>
<cfoutput><cfinclude template="../model/mQuotes/qry_getQuotes.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 17 and right(cfcatch.MissingFileName,17) is "qry_getQuotes.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse qry_getQuotes.cfm in circuit mQuotes which does not exist (from fuseaction mQuotes.view).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="vQuotes.view" --->
<cfset myFusebox.thisCircuit = "vQuotes">
<cftry>
<cfsavecontent variable="fusebox.layout"><cfoutput><cfinclude template="../view/vQuotes/dsp_quoteList.cfm"></cfoutput></cfsavecontent>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 17 and right(cfcatch.MissingFileName,17) is "dsp_quoteList.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_quoteList.cfm in circuit vQuotes which does not exist (from fuseaction vQuotes.view).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="layout.layout" --->
<!--- do action="mLayout.layout" --->
<!--- do action="vLayout.layout" --->
<cfset myFusebox.thisPhase = "postprocessFuseactions">
<cfset myFusebox.thisCircuit = "vLayout">
<cfset myFusebox.thisFuseaction = "layout">
<cftry>
<cfoutput><cfinclude template="../view/vLayout/dsp_layout.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_layout.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_layout.cfm in circuit vLayout which does not exist (from fuseaction vLayout.layout).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

