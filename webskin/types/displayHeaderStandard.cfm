<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Standard Header --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<cfparam name="stParam.title" default="#application.fc.lib.seo.getTitle()#">


<cfoutput><!DOCTYPE html>
<html>
<head>
	<title><cfif len(stParam.title)>#stParam.title# - </cfif>FarCry Core 7.0</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,700">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>
<body>
	<header class="navbar navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<cfif request.navid eq application.fapi.getNavId("home")>
					<a href="/" class="navbar-brand active">FarCry Core</a>
				<cfelse>
					<a href="/" class="navbar-brand">FarCry Core</a>
				</cfif>
			</div>
			<nav class="collapse navbar-collapse" role="navigation">
				<skin:simpleNav navID="#application.navid.home#" id="nav" class="nav navbar-nav" depth="1" bIncludeHome="false">	
				<div class="pull-right">
					<span class="nav-button nav-button-blog"><a href="http://blog.farcrycore.org/">Blog</a></span>
					<span class="nav-button nav-button-forum"><a href="http://discourse.farcrycore.org/">Forum</a></span>
				</div>
			</nav>
		</div>
	</header>

	<cfif request.navid neq application.fapi.getNavId("home")>

		<section class="section section-header">
			<div class="container">

				<h1>#stObj.title#</h1>
				<p class="muted">
					#stObj.teaser#
				</p>

			</div>
		</section>

	</cfif>
</cfoutput>

<cfsetting enablecfoutputonly="false">