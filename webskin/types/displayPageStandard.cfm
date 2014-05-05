<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Standard Page --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayHeaderStandard" />

<cfif request.navid neq application.fapi.getNavId("home")>
<cfoutput>

</cfoutput>
</cfif>

<skin:view typename="#stObj.typename#" objectid="#stObj.objectid#" webskin="#url.bodyView#" />

<skin:view objectid="#stObj.objectid#" typename="#stObj.typename#" template="displayFooterStandard" />

<cfsetting enablecfoutputonly="false">