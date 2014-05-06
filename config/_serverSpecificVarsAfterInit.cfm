<cfsetting enablecfoutputonly="true">
<!--- THIS WILL BE INCLUDED AFTER THE FARCRY INIT HAS BEEN RUN BUT ONLY ON APPLICATION INITIALISATION. --->

<!--- 
 // Amazon S3 CDN 
--------------------------------------------------------------------------------->
<!---
<cfset application.aws.accesskeyid = "" />
<cfset application.aws.secretkey = "" />
 
<cfset application.aws.imgPrefix = "//s3.amazonaws.com/" & "io-farcrycore-org/live" />
 
<cfset application.fc.lib.cdn.setLocation(
    name="images_old",
    cdn="local",
    locationinfo=application.fc.lib.cdn.getLocation("images")) />

<cfset application.fc.lib.cdn.setLocation(
    name="images",
    cdn="s3",
    accessKeyId=application.aws.accesskeyid,
    awsSecretKey=application.aws.secretkey,
    bucket="io-farcrycore-org",
    region="",
    security="public",
    pathPrefix="/live",
    admins=["modius@daemon.com.au"]) />
    
<cfset application.fc.lib.cdn.setLocation(
    name="archive_old",
    cdn="local",
    locationinfo=application.fc.lib.cdn.getLocation("archive")) />
    
<cfset application.fc.lib.cdn.setLocation(
    name="archive",
    cdn="s3",
    accessKeyId=application.aws.accesskeyid,
    awsSecretKey=application.aws.secretkey,
    bucket="io-farcrycore-org",
    region="",
    security="private",
    urlExpiry=1800,
    pathPrefix="/live/mediaArchive",
    admins=["modius@daemon.com.au"]) />
    
<cfset application.fc.lib.cdn.setLocation(
    name="publicfiles_old",
    cdn="local",
    locationinfo=application.fc.lib.cdn.getLocation("publicfiles")) />
    
<cfset application.fc.lib.cdn.setLocation(
    name="publicfiles",
    cdn="s3",
    accessKeyId=application.aws.accesskeyid,
    awsSecretKey=application.aws.secretkey,
    bucket="io-farcrycore-org",
    region="",
    security="public",
    pathPrefix="/live/files",
    admins=["modius@daemon.com.au"]) />

<cfset application.fc.lib.cdn.setLocation(
    name="privatefiles_old",
    cdn="local",
    locationinfo=application.fc.lib.cdn.getLocation("privatefiles")) />
    
<cfset application.fc.lib.cdn.setLocation(
    name="privatefiles",
    cdn="s3",
    accessKeyId=application.aws.accesskeyid,
    awsSecretKey=application.aws.secretkey,
    bucket="io-farcrycore-org",
    region="",
    security="private",
    urlExpiry=1800,
    pathPrefix="/live/securefiles",
    admins=["modius@daemon.com.au"]) />
--->

<cfsetting enablecfoutputonly="false">