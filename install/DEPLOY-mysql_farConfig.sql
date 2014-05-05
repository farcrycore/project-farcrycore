CREATE TABLE farConfig(
ownedby varchar(250) NULL DEFAULT NULL ,
createdby varchar(250) NOT NULL DEFAULT '' ,
lastupdatedby varchar(250) NOT NULL DEFAULT '' ,
configtypename varchar(250) NULL DEFAULT NULL ,
datetimecreated datetime NOT NULL ,
lockedBy varchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL ,
label varchar(250) NULL DEFAULT NULL ,
configdata longtext NULL ,
locked tinyint(1) NOT NULL DEFAULT 0 ,
configkey varchar(250) NULL DEFAULT NULL ,
ObjectID varchar(50) NOT NULL DEFAULT '' 
);
