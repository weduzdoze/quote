<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: accounts --->
<!--- fuseaction: edit --->
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
<!--- do action="mAccounts.edit" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mAccounts">
<cfset myFusebox.thisFuseaction = "edit">
<cftry>
<cfoutput><cfinclude template="../model/mAccounts/qry_getAccessLevels.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 23 and right(cfcatch.MissingFileName,23) is "qry_getAccessLevels.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse qry_getAccessLevels.cfm in circuit mAccounts which does not exist (from fuseaction mAccounts.edit).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cftry>
<cfoutput><cfinclude template="../model/mAccounts/qry_getAccountDetails.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 25 and right(cfcatch.MissingFileName,25) is "qry_getAccountDetails.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse qry_getAccountDetails.cfm in circuit mAccounts which does not exist (from fuseaction mAccounts.edit).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="vAccounts.edit" --->
<cfset myFusebox.thisCircuit = "vAccounts">
<cftry>
<cfsavecontent variable="fusebox.layout"><cfoutput><cfinclude template="../view/vAccounts/dsp_editAccount.cfm"></cfoutput></cfsavecontent>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 19 and right(cfcatch.MissingFileName,19) is "dsp_editAccount.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_editAccount.cfm in circuit vAccounts which does not exist (from fuseaction vAccounts.edit).">
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

