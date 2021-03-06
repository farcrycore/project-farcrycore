CREATE TABLE farWorkflow(
ownedby nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
description nvarchar(MAX) NULL ,
datetimelastupdated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
label nvarchar(250) NULL DEFAULT NULL ,
bTasksComplete bit NULL DEFAULT 0 ,
workflowDefID nvarchar(50) NULL DEFAULT NULL ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
completionDate datetime NULL DEFAULT NULL ,
datetimecreated datetime NOT NULL DEFAULT {ts '2214-05-05 18:06:41'} ,
bWorkflowComplete bit NULL DEFAULT 0 ,
bActive bit NULL DEFAULT 1 ,
lockedBy nvarchar(250) NULL DEFAULT NULL ,
bWorkflowSetupComplete bit NULL DEFAULT 0 ,
referenceID nvarchar(50) NULL DEFAULT NULL ,
locked bit NOT NULL DEFAULT 0 ,
title nvarchar(250) NULL DEFAULT NULL ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' 
);
