CREATE TABLE farBarnacle(
permissionid varchar(50) NULL DEFAULT NULL ,
barnaclevalue decimal(10,2) NULL DEFAULT 0 ,
ownedby varchar(250) NULL DEFAULT NULL ,
lastupdatedby varchar(250) NOT NULL DEFAULT '' ,
roleid varchar(50) NULL DEFAULT NULL ,
label varchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
objecttype varchar(250) NULL DEFAULT NULL ,
createdby varchar(250) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
lockedBy varchar(250) NULL DEFAULT NULL ,
referenceid varchar(50) NULL DEFAULT NULL ,
locked tinyint(1) NOT NULL DEFAULT 0 ,
ObjectID varchar(50) NOT NULL DEFAULT '' 
);
