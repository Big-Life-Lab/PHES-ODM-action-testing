/*
ODM V2-RC2 ERD from Lucid chart
Downloaded 2022-11-27
*/

CREATE TABLE `sets` (
  `setID` varchar,
  `setType` varchar,
  `partID` varchar,
  `status` varchar,
  `firstReleased` varchar,
  `lastUpdated` varchar,
  `changes` varchar,
  `notes` varchar,
  PRIMARY KEY (`setID`)
);

CREATE TABLE `parts` (
  `partID` varchar,
  `partLabel` varchar,
  `partType` varchar,
  `shortName` varchar,
  `partDesc` varchar,
  `partInstr` varchar,
  `domainID` varchar,
  `specimenSet` varchar,
  `compSet` varchar,
  `groupID` varchar,
  `classID` varchar,
  `nomenclatureID` varchar,
  `ontologyRef` varchar,
  `latExp` varchar,
  `catSetID` varchar,
  `unitSetID` varchar,
  `aggScaleID` varchar,
  `aggSetID` varchar,
  `qualitySetID` varchar,
  `status` varchar,
  `firstReleased` varchar,
  `lastUpdated` varchar,
  `changes` varchar,
  `protocolSteps` varchar,
  `protocolStepsRequired` varchar,
  `protocolStepsOrder` int,
  `protocolOrg` varchar,
  `protocolOrgRequired` varchar,
  `protocolOrgOrder` int,
  `measures` varchar,
  `measuresRequired` varchar,
  `measuresOrder` int,
  `measureSets` varchar,
  `measureSetsRequired` varchar,
  `measureSetsOrder` int,
  `datasets` varchar,
  `datasetsRequired` varchar,
  `datasetsOrder` int,
  `sites` varchar,
  `sitesRequired` varchar,
  `sitesOrder` int,
  `samples` varchar,
  `samplesRequired` varchar,
  `samplesOrder` int,
  `addresses` varchar,
  `addressesRequired` varchar,
  `addressesOrder` int,
  `contacts` varchar,
  `contactsRequired` varchar,
  `contactsOrder` int,
  `organizations` varchar,
  `organizationsRequired` varchar,
  `organizationsOrder` int,
  `instruments` varchar,
  `instrumentsRequired` varchar,
  `instrumentsOrder` int,
  `polygons` varchar,
  `polygonsRequired` varchar,
  `polygonsOrder` int,
  `languages` varchar,
  `languagesOrder` int,
  `translations` varchar,
  `translationsOrder` int,
  `parts` varchar,
  `sets` varchar,
  `setsOrder` int,
  `qualityReports` varchar,
  `qualityReportsRequired` varchar,
  `qualityReportsOrder` int,
  `sampleRelationships` varchar,
  `sampleRelationshipsRequired` varchar,
  `sampleRelationshipsOrder` int,
  `protocols` varchar,
  `protocolsRequired` varchar,
  `protocolsOrder` int,
  `refLink` varchar,
  `dataType` varchar,
  `minValue` int,
  `maxValue` int,
  `minLength` int,
  `maxLength` int,
  PRIMARY KEY (`partID`));

CREATE TABLE `datasets` (
  `parDatasetID` varchar,
  `datasetID` varchar,
  `name` varchar,
  `license` varchar,
  `descr` varchar,
  `refLink` varchar,
  `langID` varchar,
  `funderCont` varchar,
  `custodyCont` varchar,
  `funderID` varchar,
  `custodyID` varchar,
  `lastEdited` varchar,
  `notes` varchar,
  PRIMARY KEY (`datasetID`));

CREATE TABLE `addresses` (
  `addID` varchar,
  `datasetID` varchar,
  `addL1` varchar,
  `addL2` varchar,
  `city` varchar,
  `stateProvReg` varchar,
  `pCode` varchar,
  `country` varchar,
  `lastEdited` varchar,
  `notes` varchar,
  PRIMARY KEY (`addID`));

CREATE TABLE `organizations` (
  `orgID` varchar,
  `datasetID` varchar,
  `addID` varchar,
  `orgTypeID` varchar,
  `name` varchar,
  `descr` varchar,
  `lastEdited` varchar,
  PRIMARY KEY (`orgID`));

CREATE TABLE `contacts` (
  `contID` varchar,
  `datasetID` varchar,
  `orgID` varchar,
  `firstName` varchar,
  `lastName` varchar,
  `email` varchar,
  `phone` varchar,
  `role` varchar,
  `lastEdited` varchar,
  `notes` varchar,
  PRIMARY KEY (`contID`));

CREATE TABLE `protocols` (
  `sourceProtocol` varchar,
  `protocolID` varchar,
  `datasetID` varchar,
  `name` varchar,
  `summ` varchar,
  `reflink` varchar,
  `orgID` varchar,
  `contID` varchar,
  `protocolVersion` varchar,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`protocolID`));

CREATE TABLE `samples` (
  `sampleID` varchar,
  `protocolID` varchar,
  `orgID` varchar,
  `contID` varchar,
  `siteID` varchar,
  `purposeID` varchar,
  `saMaterial` varchar,
  `datasetID` varchar,
  `origin` varchar,
  `repType` varchar,
  `collType` varchar,
  `collPer` float,
  `collNum` int,
  `pooled` bool,
  `collDT` datetime,
  `collDTStart` datetime,
  `collDTEnd` datetime,
  `sentDate` datetime,
  `recDate` datetime,
  `reportable` varchar,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`sampleID`));

CREATE TABLE `languages` (
  `langID` int,
  `langFam` varchar,
  `langName` varchar,
  `natName` varchar,
  `ISO6391` varchar,
  `ISO6392T` varchar,
  `ISO6392B` varchar,
  `ISO6393` varchar,
  `ISO6396` varchar,
  `firstRelased` varchar,
  `lastUpdated` varchar,
  `changes` varchar,
  `notes` varchar,
  PRIMARY KEY (`langID`)
);

CREATE TABLE `measureSets` (
  `measureSetRepID` varchar,
  `protocolID` varchar,
  `name` varchar,
  `orgID` varchar,
  `contID` varchar,
  `notes` varchar,
  `lastEdited` varchar,
  PRIMARY KEY (`measureSetRepID`));

CREATE TABLE `polygons` (
  `polygonID` varchar,
  `datasetID` varchar,
  `name` varchar,
  `descr` varchar,
  `polyPop` int,
  `geoType` varchar,
  `geoEPSG` varchar,
  `geoWKT` varchar,
  `refLink` varchar,
  `orgID` varchar,
  `contID` varchar,
  `lastEdited` varchar,
  `notes` varchar,
  PRIMARY KEY (`polygonID`));

CREATE TABLE `sites` (
  `parSiteID` varchar,
  `siteID` varchar,
  `datasetID` varchar,
  `polygonID` varchar,
  `siteTypeID` varchar,
  `samShed` varchar,
  `addID` varchar,
  `orgID` varchar,
  `contID` varchar,
  `name` varchar,
  `descr` varchar,
  `pHDept` varchar,
  `healthReg` varchar,
  `popServ` int,
  `geoLat` varchar,
  `geoLong` varchar,
  `geoEPSG` varchar,
  `lastEdited` date,
  `notes` varchar,
  PRIMARY KEY (`siteID`));

CREATE TABLE `measures` (
  `measureRepID` varchar,
  `protocolID` varchar,
  `sampleID` varchar,
  `purposeID` varchar,
  `polygonID` varchar,
  `siteID` varchar,
  `datasetID` varchar,
  `measureSetRepID` varchar,
  `aDateStart` datetime,
  `aDateEnd` datetime,
  `reportDate` datetime,
  `specimenID` varchar,
  `fractionID` varchar,
  `groupID` varchar,
  `classID` varchar,
  `measureID` varchar,
  `value` varchar,
  `unitID` varchar,
  `aggID` varchar,
  `index` int,
  `orgID` varchar,
  `contID` varchar,
  `reportable` varchar,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`measureRepID`));

CREATE TABLE `qualityReports` (
  `qualityID` varchar,
  `measureRepID` varchar,
  `sampleID` varchar,
  `measureSetRepID` varchar,
  `qualityFlag` varchar,
  `severity` int,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`qualityID`));

CREATE TABLE `instruments` (
  `instID` varchar,
  `datasetID` varchar,
  `name` varchar,
  `model` varchar,
  `manufacturer` varchar,
  `contID` varchar,
  `orgID` varchar,
  `descr` varchar,
  `refLink` varchar,
  `instType` varchar,
  `insTypeOth` varchar,
  `index` int,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`instID`));

CREATE TABLE `protocolSteps` (
  `stepID` varchar,
  `methodID` varchar,
  `measureID` varchar,
  `summ` varchar,
  `sourceStep` varchar,
  `stepVer` varchar,
  `refLink` varchar,
  `orgID` varchar,
  `contID` varchar,
  `instID` varchar,
  `value` varchar,
  `unitID` varchar,
  `aggID` varchar,
  `lastEdited` datetime,
  `notes` varchar,
  PRIMARY KEY (`stepID`));

CREATE TABLE `protocolRelationships` (
  `protocolIDContainer` varchar,
  `protocolIDObj` varchar,
  `stepIDObj` varchar,
  `relationshipID` varchar,
  `protocolIDSub` varchar,
  `stepIDSub` varchar,
  `lastEdited` datetime,
  `notes` varchar);

CREATE TABLE `sampleRelationships` (
  `sampleIDSub` varchar,
  `relationshipID` varchar,
  `sampleIDObj` varchar,
  `lastEdited` datetime,
  `notes` varchar);

CREATE TABLE `translations` (
  `partID` varchar,
  `langID` int,
  `partLab` varchar,
  `partDesc` varchar,
  `partInstr` varchar,
  `firstReleased` varchar,
  `lastUpdated` varchar,
  `changes` varchar,
  `notes` varchar);
;
ALTER TABLE `parts` ADD 
  FOREIGN KEY (`specimenSet`) REFERENCES `sets`(`setID`),
  FOREIGN KEY (`qualitySetID`) REFERENCES `sets`(`setID`),
  FOREIGN KEY (`aggSetID`) REFERENCES `sets`(`setID`),
  FOREIGN KEY (`unitSetID`) REFERENCES `sets`(`setID`),
  FOREIGN KEY (`compSet`) REFERENCES `sets`(`setID`)
;
ALTER TABLE `datasets` ADD 
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`parDatasetID`),
  FOREIGN KEY (`license`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`langID`) REFERENCES `parts`(`partID`)
;
ALTER TABLE `addresses` ADD 
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`)
;
ALTER TABLE `organizations` ADD 
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`addID`) REFERENCES `addresses`(`addID`)
;
ALTER TABLE `contacts` ADD 
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`)
;
ALTER TABLE `protocols` ADD 
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`),
  FOREIGN KEY (`protocolID`) REFERENCES `protocols`(`sourceProtocol`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`)
;
ALTER TABLE `samples` ADD 
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`),
  FOREIGN KEY (`purposeID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`protocolID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`protocolID`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`saMaterial`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`repType`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`collType`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`)
;
ALTER TABLE `measureSets` ADD 
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`),
  FOREIGN KEY (`protocolID`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`)
;
ALTER TABLE `polygons` ADD 
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`),
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`)
;
ALTER TABLE `sites` ADD 
  FOREIGN KEY (`polygonID`) REFERENCES `polygons`(`polygonID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`),
  FOREIGN KEY (`siteID`) REFERENCES `sites`(`parSiteID`),
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`siteTypeID`) REFERENCES `parts`(`partID`)
;
ALTER TABLE `measures` ADD 
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`measureID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`siteID`) REFERENCES `sites`(`siteID`),
  FOREIGN KEY (`sampleID`) REFERENCES `samples`(`sampleID`),
  FOREIGN KEY (`polygonID`) REFERENCES `polygons`(`polygonID`),
  FOREIGN KEY (`fractionID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`aggID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`classID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`groupID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`purposeID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`measureSetRepID`) REFERENCES `measureSets`(`measureSetRepID`),
  FOREIGN KEY (`specimenID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`protocolID`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`unitID`) REFERENCES `parts`(`partID`)
;
ALTER TABLE `qualityReports` ADD 
  FOREIGN KEY (`measureSetRepID`) REFERENCES `measureSets`(`measureSetRepID`),
  FOREIGN KEY (`sampleID`) REFERENCES `samples`(`sampleID`),
  FOREIGN KEY (`measureRepID`) REFERENCES `measures`(`measureRepID`)
;
ALTER TABLE `instruments` ADD 
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`),
  FOREIGN KEY (`instType`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`datasetID`) REFERENCES `datasets`(`datasetID`),
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`)
;
ALTER TABLE `protocolSteps` ADD 
  FOREIGN KEY (`instID`) REFERENCES `instruments`(`instID`),
  FOREIGN KEY (`contID`) REFERENCES `contacts`(`contID`),
  FOREIGN KEY (`sourceStep`) REFERENCES `protocolSteps`(`stepID`),
  FOREIGN KEY (`orgID`) REFERENCES `organizations`(`orgID`),
  FOREIGN KEY (`aggID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`unitID`) REFERENCES `parts`(`partID`)
;
ALTER TABLE `protocolRelationships` ADD 
  FOREIGN KEY (`protocolIDObj`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`protocolIDContainer`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`protocolIDSub`) REFERENCES `protocols`(`protocolID`),
  FOREIGN KEY (`stepIDObj`) REFERENCES `protocolSteps`(`stepID`),
  FOREIGN KEY (`stepIDSub`) REFERENCES `protocolSteps`(`stepID`)
;
ALTER TABLE `sampleRelationships` ADD 
  FOREIGN KEY (`sampleIDObj`) REFERENCES `samples`(`sampleID`),
  FOREIGN KEY (`sampleIDSub`) REFERENCES `samples`(`sampleID`),
  FOREIGN KEY (`relationshipID`) REFERENCES `parts`(`partID`)
;
ALTER TABLE `translations` ADD 
  FOREIGN KEY (`partID`) REFERENCES `parts`(`partID`),
  FOREIGN KEY (`langID`) REFERENCES `languages`(`langID`)
;