<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: quote --->
<!--- fuseaction: start --->
<cftry>
<!--- do action="mQuote.start" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mQuote">
<cfset myFusebox.thisFuseaction = "start">
<cftry>
<cfoutput><cfinclude template="../model/mQuote/qry_getSpecialties.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 22 and right(cfcatch.MissingFileName,22) is "qry_getSpecialties.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse qry_getSpecialties.cfm in circuit mQuote which does not exist (from fuseaction mQuote.start).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="vQuote.start" --->
<cfset myFusebox.thisCircuit = "vQuote">
<cftry>
<cfsavecontent variable="fusebox.layout"><cfoutput><cfinclude template="../view/vQuote/dsp_quotes.cfm"></cfoutput></cfsavecontent>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_quotes.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_quotes.cfm in circuit vQuote which does not exist (from fuseaction vQuote.start).">
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

