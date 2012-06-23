<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: manage --->
<!--- fuseaction: getSpecialties --->
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
<!--- do action="mManage.getSpecialties" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mManage">
<cfset myFusebox.thisFuseaction = "getSpecialties">
<cftry>
<cfoutput><cfinclude template="../model/mManage/../mQuotes/qry_getSpecialties.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 33 and right(cfcatch.MissingFileName,33) is "../mQuotes/qry_getSpecialties.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse ../mQuotes/qry_getSpecialties.cfm in circuit mManage which does not exist (from fuseaction mManage.getSpecialties).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cftry>
<cfoutput><cfinclude template="../model/mManage/act_loadSpecialtiesDropdown.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 31 and right(cfcatch.MissingFileName,31) is "act_loadSpecialtiesDropdown.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_loadSpecialtiesDropdown.cfm in circuit mManage which does not exist (from fuseaction mManage.getSpecialties).">
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

