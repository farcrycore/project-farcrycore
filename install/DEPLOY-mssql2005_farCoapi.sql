CREATE TABLE farCoapi(
ownedby nvarchar(250) NULL DEFAULT NULL ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
name nvarchar(250) NULL DEFAULT NULL ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
label nvarchar(250) NULL DEFAULT NULL ,
locked bit NOT NULL DEFAULT 0 ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
