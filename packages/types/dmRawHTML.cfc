<cfcomponent displayname="Raw HTML Page" extends="farcry.core.packages.types.types"
	bFriendly="true" bObjectBroker="true" bUseInTree="true"
	hint="A raw HTML Page content type for advanced users to hand build the HTML markup of a page">

	<cfproperty name="title" type="string" required="false"
		ftSeq="1" ftFieldset="HTML Page Details" ftLabel="Title">

	<cfproperty name="teaser" type="longchar" required="false"
		ftSeq="2" ftFieldset="HTML Page Details" ftLabel="Teaser">

	<cfproperty name="body" type="longchar" required="false"
		ftSeq="3" ftFieldset="HTML Page Details" ftLabel="Body HTML"
		ftLabelAlignment="block"
		ftStyle="height:600px;max-width:1080px;font-family:Consolas,monospace;font-size:13px;line-height:1.3">

</cfcomponent>