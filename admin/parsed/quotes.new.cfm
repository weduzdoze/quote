<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: quotes --->
<!--- fuseaction: new --->
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
<!--- do action="mQuotes.new" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mQuotes">
<cfset myFusebox.thisFuseaction = "new">
<cftry>
<cfoutput><cfinclude template="../model/mQuotes/qry_getSpecialties.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 22 and right(cfcatch.MissingFileName,22) is "qry_getSpecialties.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse qry_getSpecialties.cfm in circuit mQuotes which does not exist (from fuseaction mQuotes.new).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="vQuotes.new" --->
<cfset myFusebox.thisCircuit = "vQuotes">
<cftry>
<cfsavecontent variable="fusebox.layout"><cfoutput><cfinclude template="../view/vQuotes/dsp_newQuote.cfm"></cfoutput></cfsavecontent>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "dsp_newQuote.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_newQuote.cfm in circuit vQuotes which does not exist (from fuseaction vQuotes.new).">
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

