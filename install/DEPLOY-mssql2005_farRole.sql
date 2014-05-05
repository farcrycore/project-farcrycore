CREATE TABLE farRole(
ownedby nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
webskins nvarchar(MAX) NULL ,
label nvarchar(250) NULL DEFAULT NULL ,
typePermissions nvarchar(MAX) NULL ,
webtopPermissions nvarchar(MAX) NULL ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
isdefault bit NULL DEFAULT 0 ,
sitePermissions nvarchar(MAX) NULL ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
locked bit NOT NULL DEFAULT 0 ,
title nvarchar(250) NULL DEFAULT NULL ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
