CREATE TABLE farQueueResult(
ownedby varchar(250) NULL DEFAULT NULL ,
lastupdatedby varchar(250) NOT NULL DEFAULT '' ,
jobID varchar(50) NULL DEFAULT NULL ,
resultTick decimal(15,0) NULL DEFAULT 0 ,
label varchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
taskOwnedBy varchar(250) NULL DEFAULT NULL ,
wddxResult longtext NULL ,
createdby varchar(250) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL DEFAULT '2214-05-05 06:06:41' ,
jobType varchar(250) NULL DEFAULT 'Unkknown' ,
lockedBy varchar(250) NULL DEFAULT NULL ,
taskID varchar(250) NULL DEFAULT NULL ,
resultTimestamp datetime NULL DEFAULT NULL ,
locked tinyint(1) NOT NULL DEFAULT 0 ,
ObjectID varchar(50) NOT NULL DEFAULT '' 
);
