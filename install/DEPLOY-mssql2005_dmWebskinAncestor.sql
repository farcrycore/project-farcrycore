CREATE TABLE dmWebskinAncestor(
ancestorTemplate nvarchar(250) NOT NULL DEFAULT '' ,
ownedby nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
webskinTypename nvarchar(250) NULL DEFAULT NULL ,
label nvarchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
webskinTemplate nvarchar(250) NULL DEFAULT NULL ,
ancestorTypename nvarchar(250) NOT NULL DEFAULT '' ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
webskinObjectID nvarchar(50) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
ancestorID nvarchar(50) NOT NULL DEFAULT '' ,
locked bit NOT NULL DEFAULT 0 ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
