CREATE TABLE dmCSS(
ownedby varchar(250) NULL DEFAULT NULL ,
lastupdatedby varchar(250) NOT NULL DEFAULT '' ,
description longtext NULL ,
label varchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
filename varchar(250) NULL DEFAULT NULL ,
mediaType varchar(250) NULL DEFAULT NULL ,
bThisNodeOnly tinyint(1) NOT NULL DEFAULT 0 ,
createdby varchar(250) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
lockedBy varchar(250) NULL DEFAULT NULL ,
locked tinyint(1) NOT NULL DEFAULT 0 ,
title varchar(250) NULL DEFAULT NULL ,
ObjectID varchar(50) NOT NULL DEFAULT '' 
);
