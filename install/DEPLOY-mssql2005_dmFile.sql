CREATE TABLE dmFile(
ownedby nvarchar(250) NULL DEFAULT NULL ,
catFile nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
description nvarchar(MAX) NULL ,
label nvarchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
filename nvarchar(250) NULL DEFAULT NULL ,
status nvarchar(250) NOT NULL DEFAULT 'draft' ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
documentDate datetime NULL DEFAULT NULL ,
locked bit NOT NULL DEFAULT 0 ,
title nvarchar(250) NULL DEFAULT NULL ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
