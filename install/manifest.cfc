<cfcomponent extends="farcry.core.webtop.install.manifest" name="manifest">

	<cfset this.name = "FarCry Core" />
	<cfset this.description = "The farcrycore.org website" />
	<cfset this.lRequiredPlugins = "" />
	
	<cffunction name="install" output="true">
		
		<cfset var result = "DONE" />
		<cfset result = createContent(argumentCollection=arguments) />
		
		<cfreturn result />
	</cffunction>

</cfcomponent>