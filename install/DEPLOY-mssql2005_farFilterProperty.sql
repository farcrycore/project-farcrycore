CREATE TABLE farFilterProperty(
ownedby nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
property nvarchar(250) NULL DEFAULT NULL ,
label nvarchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
wddxDefinition nvarchar(MAX) NULL ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
filterID nvarchar(50) NULL DEFAULT NULL ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
locked bit NOT NULL DEFAULT 0 ,
type nvarchar(250) NULL DEFAULT NULL ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
