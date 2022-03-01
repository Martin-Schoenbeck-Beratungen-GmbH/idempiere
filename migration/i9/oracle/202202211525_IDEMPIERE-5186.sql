SET SQLBLANKLINES ON
SET DEFINE OFF

-- IDEMPIERE-5186
-- 21.02.2022 13:43:59
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (200137,0,0,'Y',TO_DATE('2022-02-21 13:43:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:43:53','YYYY-MM-DD HH24:MI:SS'),100,'Create new edition and orders','Create a new periodical edition and orders for all subscribers','N','NewPeriodicalEdition','N','org.compiere.process.OrdersFromPeriodical','2','D',0,0,'N','Y','N','f760debf-f738-404b-b9bc-3cd437e104ab','P')
;

-- 21.02.2022 13:48:19
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200382,0,0,'Y',TO_DATE('2022-02-21 13:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:48:19','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',200137,10,30,'N',0,'N','M_Product_ID','Y','D',454,'a33af852-ff25-485a-9944-02d95a7d0f60','N','N')
;

-- 21.02.2022 13:50:02
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203555,0,0,'Y',TO_DATE('2022-02-21 13:50:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:50:02','YYYY-MM-DD HH24:MI:SS'),100,'EditionNo','Edition number','Edition number','D','be1fb071-d2eb-4827-a5e1-a3a1dba6b62c')
;

-- 21.02.2022 13:50:50
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200383,0,0,'Y',TO_DATE('2022-02-21 13:50:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:50:45','YYYY-MM-DD HH24:MI:SS'),100,'Edition number',200137,20,11,'N',4000,'N','EditionNo','Y','D',203555,'5937748e-e8ec-4e34-ac23-7ab4c7ce5787','N','N')
;

-- 21.02.2022 13:53:42
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable) VALUES (200332,'Periodical','C_Periodical',0,'7',0,0,'Y',TO_DATE('2022-02-21 13:53:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:53:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','D','N','Y','L','N','Y','f005f38e-9e50-4805-afe4-d32e54a0957e','N','N','N','N')
;

-- 21.02.2022 13:53:42
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('C_Periodical',1000000,'N','N','Table C_Periodical','Y','Y',0,0,TO_DATE('2022-02-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),100,200401,'Y',1000000,1,200000,'4b2d53ca-6961-43d9-bf6a-bc6d78e398e0')
;

-- 21.02.2022 13:56:22
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203556,0,0,'Y',TO_DATE('2022-02-21 13:56:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:56:17','YYYY-MM-DD HH24:MI:SS'),100,'IntroducedOn','Introduced on','The date this periodical was first introduced','Introduced on','D','635d90fb-7ab6-4cdd-82e4-c8df3b61e55a')
;

-- 21.02.2022 13:56:42
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214667,0,'Introduced on','The date this periodical was first introduced',200332,'IntroducedOn', '@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2022-02-21 13:56:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:56:42','YYYY-MM-DD HH24:MI:SS'),100,203556,'Y','N','D','N','N','N','Y','63b4aeb5-c507-49a7-b950-4058a8763711','Y',0,'N','N','N','N')
;

-- 21.02.2022 13:59:12
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203557,0,0,'Y',TO_DATE('2022-02-21 13:59:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 13:59:07','YYYY-MM-DD HH24:MI:SS'),100,'OrdersFromPeriodical','Create orders from periodical','Introduce a new edition to a periodical and create orders for every currently subscribed user','Create orders from periodical','D','4d5a9d3f-b56f-4ace-af24-4085f3d8522d')
;

-- 21.02.2022 14:00:52
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214668,0,'Create orders from periodical','Introduce a new edition to a periodical and create orders for every currently subscribed user',200332,'OrdersFromPeriodical',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2022-02-21 14:00:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:00:51','YYYY-MM-DD HH24:MI:SS'),100,203557,'Y',200137,'N','D','N','N','N','Y','ef163136-89e5-4e9f-bc7e-279c9d148081','Y',0,'Y','N','N','N')
;

-- 21.02.2022 14:01:57
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214669,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200332,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_DATE('2022-02-21 14:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:52','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','1=1','D','N','338989bc-3a4b-49b9-9b7f-9b3a15746478','N')
;

-- 21.02.2022 14:01:58
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214670,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200332,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2022-02-21 14:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:57','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','D','N','e93ed22a-6efa-4c2c-b7ef-37f733feb5c0','N')
;

-- 21.02.2022 14:01:58
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214671,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',200332,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','D','N','4e2fa9ab-1966-4917-af84-89fc2d9cb25c','N')
;

-- 21.02.2022 14:01:58
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214672,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',200332,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','D','N','8a2a03b8-5f7c-4b41-a040-ced1299d8355','N')
;

-- 21.02.2022 14:01:59
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214673,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',200332,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:58','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','D','N','acfcf874-cd57-41d2-b523-cfb2d8231e0d','N')
;

-- 21.02.2022 14:01:59
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214674,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',200332,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','D','N','3b082889-87a0-4285-bedd-2243c3c2c059','N')
;

-- 21.02.2022 14:01:59
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214675,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200332,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','D','N','87e0279f-66eb-4c11-b371-e171a04e410e','N')
;

-- 21.02.2022 14:01:59
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203558,0,0,'Y',TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,'C_Periodical_ID','Periodical','Periodical','D','c43e7116-ef9d-4dac-9eb8-317119e249d9')
;

-- 21.02.2022 14:02:00
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214676,0.0,'Periodical',200332,'C_Periodical_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:01:59','YYYY-MM-DD HH24:MI:SS'),100,203558,'N','N','D','N','e9766ec4-eee6-4288-95fc-fb6d6cb8e801','N')
;

-- 21.02.2022 14:02:00
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203559,0,0,'Y',TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,'C_Periodical_UU','C_Periodical_UU','C_Periodical_UU','D','dca97328-3878-4e14-89f4-3e9100b01ad6')
;

-- 21.02.2022 14:02:00
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214677,0.0,'C_Periodical_UU',200332,'C_Periodical_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,203559,'Y','N','D','N','4e9ad4ad-cd0c-4d02-b3c3-53cf0981e2e8','N')
;

-- 21.02.2022 14:02:01
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (214678,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',200332,'Value',40,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:02:00','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','D','N','e1da7f9f-a6c9-44a0-886a-ab6f4d4754e0',10,'N')
;

-- 21.02.2022 14:02:01
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (214679,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200332,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2022-02-21 14:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:02:01','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','D','N','948355ca-210b-46bc-a574-c6c4f0934fa3',20,'N')
;

-- 21.02.2022 14:02:01
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214680,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',200332,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:02:01','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','N','D','N','0ceeb9dc-5820-4f63-8e8d-f1f7ec0124d0','N')
;

-- 21.02.2022 14:02:45
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_CPeriodical', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:02:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214669
;

-- 21.02.2022 14:02:45
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_CPeriodical', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:02:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214670
;

-- 21.02.2022 14:02:45
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_CPeriodical', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:02:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214672
;

-- 21.02.2022 14:02:45
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_CPeriodical', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:02:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214674
;

-- 21.02.2022 14:02:45
CREATE TABLE C_Periodical (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Periodical_ID NUMBER(10) NOT NULL, C_Periodical_UU VARCHAR2(36 CHAR) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description VARCHAR2(255 CHAR) DEFAULT NULL , IntroducedOn DATE DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR2(60 CHAR) NOT NULL, OrdersFromPeriodical CHAR(1) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value VARCHAR2(40 CHAR) DEFAULT NULL , CONSTRAINT C_Periodical_Key PRIMARY KEY (C_Periodical_ID), CONSTRAINT C_Periodical_UU_idx UNIQUE (C_Periodical_UU))
;

-- 21.02.2022 14:02:45
ALTER TABLE C_Periodical ADD CONSTRAINT ADClient_CPeriodical FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:02:45
ALTER TABLE C_Periodical ADD CONSTRAINT ADOrg_CPeriodical FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:02:45
ALTER TABLE C_Periodical ADD CONSTRAINT CreatedBy_CPeriodical FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:02:45
ALTER TABLE C_Periodical ADD CONSTRAINT UpdatedBy_CPeriodical FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:03:51
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable) VALUES (200333,'Periodical Edition','C_PeriodicalEdition',0,'7',0,0,'Y',TO_DATE('2022-02-21 14:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:03:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','D','N','Y','L','N','Y','9e09d1e9-e72c-4bc6-be71-4c488c88d16a','N','N','N','N')
;

-- 21.02.2022 14:03:51
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('C_PeriodicalEdition',1000000,'N','N','Table C_PeriodicalEdition','Y','Y',0,0,TO_DATE('2022-02-21 14:03:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:03:51','YYYY-MM-DD HH24:MI:SS'),100,200402,'Y',1000000,1,200000,'eea82d27-9bdb-4ebb-b94d-2ae8e34a760b')
;

-- 21.02.2022 14:04:20
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214681,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200333,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','1=1','D','N','922ae9c9-273d-4942-ac0e-49d1f3050ba5','N')
;

-- 21.02.2022 14:04:20
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214682,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200333,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','D','N','ca735610-e052-4a8e-b20f-acfa23f80177','N')
;

-- 21.02.2022 14:04:21
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214683,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',200333,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:20','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','D','N','e3cedb6b-282b-41ba-9fcf-4c6e96d347de','N')
;

-- 21.02.2022 14:04:26
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214684,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',200333,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:04:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:21','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','D','N','04e96e1a-d814-44a7-8d03-498c1ffdeb1c','N')
;

-- 21.02.2022 14:04:26
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214685,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',200333,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','D','N','aa95b125-5ced-4b60-ad19-a050c2332940','N')
;

-- 21.02.2022 14:04:27
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214686,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',200333,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:26','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','D','N','3eedf7fe-0a10-48bc-a052-c5dfc275dc9e','N')
;

-- 21.02.2022 14:04:27
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214687,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200333,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','D','N','f90bf8cb-4b10-477b-9238-7f142015903d','N')
;

-- 21.02.2022 14:04:27
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203560,0,0,'Y',TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,'C_PeriodicalEdition_ID','Periodical Edition','Periodical Edition','D','730491fe-0551-422f-bd5c-0ec63da56dec')
;

-- 21.02.2022 14:04:28
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214688,0.0,'Periodical Edition',200333,'C_PeriodicalEdition_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:27','YYYY-MM-DD HH24:MI:SS'),100,203560,'N','N','D','N','1f2436f2-e7c2-46bb-9a20-71b2b1f8001c','N')
;

-- 21.02.2022 14:04:28
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203561,0,0,'Y',TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,'C_PeriodicalEdition_UU','C_PeriodicalEdition_UU','C_PeriodicalEdition_UU','D','914b9432-45ca-45dd-9f05-b47b1a5f8ee4')
;

-- 21.02.2022 14:04:28
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214689,0.0,'C_PeriodicalEdition_UU',200333,'C_PeriodicalEdition_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,203561,'Y','N','D','N','627c802a-4b86-4c1b-baa3-6821f21d329a','N')
;

-- 21.02.2022 14:04:29
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (214690,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200333,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:28','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','D','N','9d06a502-8466-4073-8800-2b3b54a790f7',10,'N')
;

-- 21.02.2022 14:04:29
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214691,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',200333,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:04:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:04:29','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','N','D','N','88a595a9-55c0-4185-8021-c4b74bf9bd82','N')
;

-- 21.02.2022 14:05:21
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214692,0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',200333,231,'M_Product_ID',22,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_DATE('2022-02-21 14:05:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:05:16','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','N','D','N','N','N','Y','4cd7ad1d-b413-42b9-82c3-52cead05895e','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:06:06
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214693,0,'Introduced on','The date this periodical was first introduced',200333,'IntroducedOn','@#Date@',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_DATE('2022-02-21 14:06:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:06:05','YYYY-MM-DD HH24:MI:SS'),100,203556,'Y','N','D','N','N','N','Y','bd78fe7c-d5a2-41cf-9b32-6b91de21ff94','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:06:37
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214694,0,'Edition number',200333,'EditionNo',4000,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2022-02-21 14:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:06:37','YYYY-MM-DD HH24:MI:SS'),100,203555,'Y','N','D','N','N','N','Y','29480c65-70d4-4e24-bc6f-75bdeca42297','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:06:58
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214695,0,'Periodical',200333,'C_Periodical_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2022-02-21 14:06:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:06:58','YYYY-MM-DD HH24:MI:SS'),100,203558,'N','N','D','N','N','N','Y','8a5ee283-3f5c-40b5-b6e0-3862a9cf40bc','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:07:19
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214681
;

-- 21.02.2022 14:07:19
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214682
;

-- 21.02.2022 14:07:19
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='CPeriodical_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214695
;

-- 21.02.2022 14:07:19
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214684
;

-- 21.02.2022 14:07:19
UPDATE AD_Column SET FKConstraintName='MProduct_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214692
;

-- 21.02.2022 14:07:20
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_CPeriodicalEdition', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214686
;

-- 21.02.2022 14:07:20
CREATE TABLE C_PeriodicalEdition (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_PeriodicalEdition_ID NUMBER(10) NOT NULL, C_PeriodicalEdition_UU VARCHAR2(36 CHAR) DEFAULT NULL , C_Periodical_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description VARCHAR2(255 CHAR) DEFAULT NULL , EditionNo NUMBER(10) NOT NULL, IntroducedOn DATE NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMBER(10) NOT NULL, Name VARCHAR2(60 CHAR) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT C_PeriodicalEdition_Key PRIMARY KEY (C_PeriodicalEdition_ID), CONSTRAINT C_PeriodicalEdition_UU_idx UNIQUE (C_PeriodicalEdition_UU))
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT ADClient_CPeriodicalEdition FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT ADOrg_CPeriodicalEdition FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT CPeriodical_CPeriodicalEdition FOREIGN KEY (C_Periodical_ID) REFERENCES c_periodical(c_periodical_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT CreatedBy_CPeriodicalEdition FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT MProduct_CPeriodicalEdition FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:07:20
ALTER TABLE C_PeriodicalEdition ADD CONSTRAINT UpdatedBy_CPeriodicalEdition FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:08:37
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,CreateWindowFromTable) VALUES (200334,'Periodical Subscriber','C_PeriodicalSubscriber',0,'7',0,0,'Y',TO_DATE('2022-02-21 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','D','N','Y','L','N','Y','8ac2ccb2-07e2-42bd-875c-1e30cad33486','N','N','N','N')
;

-- 21.02.2022 14:08:37
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('C_PeriodicalSubscriber',1000000,'N','N','Table C_PeriodicalSubscriber','Y','Y',0,0,TO_DATE('2022-02-21 14:08:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:08:37','YYYY-MM-DD HH24:MI:SS'),100,200403,'Y',1000000,1,200000,'f7f7823a-8722-44ec-bbb9-0eb5c2916807')
;

-- 21.02.2022 14:09:37
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214696,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200334,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_DATE('2022-02-21 14:09:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:32','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','1=1','D','N','257aca33-0132-4ee3-8499-39ada87a827d','N')
;

-- 21.02.2022 14:09:37
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214697,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200334,'AD_Org_ID','@AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2022-02-21 14:09:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:37','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','D','N','a608ddbb-d283-49bd-b70b-57c87fc583f8','N')
;

-- 21.02.2022 14:09:38
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214698,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',200334,'Created',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:09:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:37','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','D','N','a8d1a84c-e603-452c-bf86-ff61f5e77507','N')
;

-- 21.02.2022 14:09:38
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214699,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',200334,'CreatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','D','N','54915073-ccb4-43d4-afbd-9d3857aa1a79','N')
;

-- 21.02.2022 14:09:38
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214700,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',200334,'Updated',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','D','N','e8b76d47-957d-4be5-ad25-43a4664ca7d7','N')
;

-- 21.02.2022 14:09:38
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214701,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',200334,'UpdatedBy',10,'N','N','Y','N','N','N',30,110,0,0,'Y',TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','D','N','e69590b8-34f4-42bf-8e04-30e63e5eb0e4','N')
;

-- 21.02.2022 14:09:39
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214702,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200334,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:38','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','D','N','9049c583-58f8-4737-bfbf-d73bf32848a4','N')
;

-- 21.02.2022 14:09:39
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203562,0,0,'Y',TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,'C_PeriodicalSubscriber_ID','Periodical Subscriber','Periodical Subscriber','D','3a597d45-b75b-4113-9c81-cfe7635a2b83')
;

-- 21.02.2022 14:09:39
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214703,0.0,'Periodical Subscriber',200334,'C_PeriodicalSubscriber_ID',22,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,203562,'N','N','D','N','e19f7cd6-6f41-4cd3-8f72-b25b73244108','N')
;

-- 21.02.2022 14:09:40
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203563,0,0,'Y',TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:39','YYYY-MM-DD HH24:MI:SS'),100,'C_PeriodicalSubscriber_UU','C_PeriodicalSubscriber_UU','C_PeriodicalSubscriber_UU','D','331f941f-18bd-4505-9526-806c3def584b')
;

-- 21.02.2022 14:09:40
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214704,0.0,'C_PeriodicalSubscriber_UU',200334,'C_PeriodicalSubscriber_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2022-02-21 14:09:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:09:40','YYYY-MM-DD HH24:MI:SS'),100,203563,'Y','N','D','N','d823914d-09d5-48d8-875a-d9b046b5dde4','N')
;

-- 21.02.2022 14:10:59
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (214705,0,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',200334,'C_BPartner_ID',22,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_DATE('2022-02-21 14:10:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:10:59','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','D','N','N','N','Y','198cf141-5f41-45e3-8595-f68f8dadaea9','Y',0,'N','N','N')
;

-- 21.02.2022 14:11:29
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (214706,0,'Subscribe Date','Date the contact actively subscribed','Date the contact subscribe the interest area',200334,'SubscribeDate','@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2022-02-21 14:11:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:11:29','YYYY-MM-DD HH24:MI:SS'),100,1895,'Y','N','D','N','N','N','Y','69ddd3ff-5b2f-4f2a-9487-93441786722f','Y',0,'N','N','N')
;

-- 21.02.2022 14:12:18
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203564,0,0,'Y',TO_DATE('2022-02-21 14:12:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:12:18','YYYY-MM-DD HH24:MI:SS'),100,'SubscribedUntil','Subscribed until','The date to which the subscription lasts','Subscribed until','D','e9b8c001-042a-4830-9a71-e34e1578bb97')
;

-- 21.02.2022 14:12:48
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214707,0,'Subscribed until','The date to which the subscription lasts',200334,'SubscribedUntil',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_DATE('2022-02-21 14:12:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:12:48','YYYY-MM-DD HH24:MI:SS'),100,203564,'Y','N','D','N','N','N','Y','29090758-5170-42b9-a21b-46228a1791a7','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:15:56
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203565,0,0,'Y',TO_DATE('2022-02-21 14:15:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:15:46','YYYY-MM-DD HH24:MI:SS'),100,'EditionsPaid','Editions paid','The number of editions the customer paid for that are still left to be delivered','Editions paid','D','7fe20a89-de46-4d61-b7a6-f06da87383df')
;

-- 21.02.2022 14:16:55
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214708,0,'Editions paid','The number of editions the customer paid for that are still left to be delivered',200334,'EditionsPaid',14,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2022-02-21 14:16:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:16:54','YYYY-MM-DD HH24:MI:SS'),100,203565,'Y','N','D','N','N','N','Y','50ed1c89-eee0-4e32-b0d3-b900bd6f4479','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:17:51
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (214709,0,'Periodical',200334,'C_Periodical_ID',22,'N','Y','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2022-02-21 14:17:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:17:46','YYYY-MM-DD HH24:MI:SS'),100,203558,'N','N','D','N','N','N','Y','ea96a7de-96db-4383-ac6d-72f9a89ac6d9','Y',0,'N','N','N','N')
;

-- 21.02.2022 14:18:05
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADClient_CPeriodicalSubscriber', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214696
;

-- 21.02.2022 14:18:05
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='ADOrg_CPeriodicalSubscriber', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214697
;

-- 21.02.2022 14:18:05
UPDATE AD_Column SET FKConstraintName='CBPartner_CPeriodicalSubscribe', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214705
;

-- 21.02.2022 14:18:06
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='CPeriodical_CPeriodicalSubscri', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214709
;

-- 21.02.2022 14:18:06
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='CreatedBy_CPeriodicalSubscribe', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214699
;

-- 21.02.2022 14:18:06
UPDATE AD_Column SET IsAllowCopy='N', FKConstraintName='UpdatedBy_CPeriodicalSubscribe', FKConstraintType='N',Updated=TO_DATE('2022-02-21 14:18:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214701
;

-- 21.02.2022 14:18:06
CREATE TABLE C_PeriodicalSubscriber (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) NOT NULL, C_PeriodicalSubscriber_ID NUMBER(10) NOT NULL, C_PeriodicalSubscriber_UU VARCHAR2(36 CHAR) DEFAULT NULL , C_Periodical_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, EditionsPaid NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, SubscribeDate DATE DEFAULT NULL , SubscribedUntil DATE NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT C_PeriodicalSubscriber_Key PRIMARY KEY (C_PeriodicalSubscriber_ID), CONSTRAINT C_PeriodicalSubscriber_UU_idx UNIQUE (C_PeriodicalSubscriber_UU))
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT ADClient_CPeriodicalSubscriber FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT ADOrg_CPeriodicalSubscriber FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT CBPartner_CPeriodicalSubscribe FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT CPeriodical_CPeriodicalSubscri FOREIGN KEY (C_Periodical_ID) REFERENCES c_periodical(c_periodical_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT CreatedBy_CPeriodicalSubscribe FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:06
ALTER TABLE C_PeriodicalSubscriber ADD CONSTRAINT UpdatedBy_CPeriodicalSubscribe FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21.02.2022 14:18:55
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (200122,'Periodical',0,0,'Y',TO_DATE('2022-02-21 14:18:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:50','YYYY-MM-DD HH24:MI:SS'),100,'M','N','D','N','N','N','0e9a2f72-1e86-4df7-8fe1-f4281c4614f2')
;

-- 21.02.2022 14:18:55
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (200305,'Periodical',200122,10,'Y',200332,0,0,'Y',TO_DATE('2022-02-21 14:18:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:55','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','C_Periodical.Value','N',0,'N','D','Y','N','c70a9257-658a-4cb8-a57f-290954352c18')
;

-- 21.02.2022 14:18:56
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206872,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200305,214669,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','17742dc2-0703-47dd-a56b-8e68abd1a1ad','N',2)
;

-- 21.02.2022 14:18:56
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (206873,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200305,214670,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','51492bb9-ad7e-41d0-8f25-7b302f7e1885','Y','N',4,2)
;

-- 21.02.2022 14:18:56
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206874,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',200305,214678,'Y',40,30,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','c075b1f3-b106-4c0c-9ff2-50e359b31d51','Y',10,2)
;

-- 21.02.2022 14:18:57
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206875,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200305,214679,'Y',60,40,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','83c59fd0-5c9a-4837-925e-1a372523a1f0','Y',20,5)
;

-- 21.02.2022 14:18:57
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206876,'Description','Optional short description of the record','A description is limited to 255 characters.',200305,214680,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','54f69758-c81c-4510-917e-10ee44e1edb5','Y',30,5)
;

-- 21.02.2022 14:18:57
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206877,'Introduced on','The date this periodical was first introduced',200305,214667,'Y',7,60,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','20c5b55a-0d3d-4f55-98f6-8e58a756c826','Y',40,2)
;

-- 21.02.2022 14:18:57
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206878,'Create orders from periodical','Introduce a new edition to a periodical and create orders for every currently subscribed user',200305,214668,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','616416b4-bd6f-4c93-af32-50e073ae2439','Y',50,2,2)
;

-- 21.02.2022 14:18:58
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206879,'Periodical',200305,214676,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','de81dde0-3e17-4b3b-a635-ef7810d9e087','N',2)
;

-- 21.02.2022 14:18:58
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206880,'C_Periodical_UU',200305,214677,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','51e17733-9695-43d7-8c35-dfd6d51c4ef1','N',2)
;

-- 21.02.2022 14:18:58
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206881,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200305,214675,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:18:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','420a0762-e258-4965-89b9-a9ce15b7dc74','Y',60,2,2)
;

-- 21.02.2022 14:18:58
UPDATE AD_Table SET AD_Window_ID=200122,Updated=TO_DATE('2022-02-21 14:18:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=200332
;

-- 21.02.2022 14:19:29
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (200306,'Periodical Edition',200122,20,'Y',200333,0,0,'Y',TO_DATE('2022-02-21 14:19:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:28','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','C_PeriodicalEdition.Name','N',1,'N','D','Y','N','63cd83f4-318f-4035-96b4-7e6532667240')
;

-- 21.02.2022 14:19:29
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206882,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200306,214681,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','41368256-2375-46ca-a73a-ba3c7372003f','N',2)
;

-- 21.02.2022 14:19:29
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (206883,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200306,214682,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','534af989-4758-4a7e-9731-bea96ca33169','Y','N',4,2)
;

-- 21.02.2022 14:19:30
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206884,'Periodical',200306,214695,'Y',22,30,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','45bff65a-64b2-479d-aba6-6faa435793f7','Y',10,2)
;

-- 21.02.2022 14:19:30
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206885,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200306,214690,'Y',60,40,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','b5875aa1-3f7f-4e5a-bd2c-01532efe9fe5','Y',20,5)
;

-- 21.02.2022 14:19:30
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206886,'Description','Optional short description of the record','A description is limited to 255 characters.',200306,214691,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','d51401ce-02f3-4149-a629-9ce96f211a72','Y',30,5)
;

-- 21.02.2022 14:19:30
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206887,'Periodical Edition',200306,214688,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','99c6ce55-024c-42e7-965f-2b691363dd7e','N',2)
;

-- 21.02.2022 14:19:31
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206888,'C_PeriodicalEdition_UU',200306,214689,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','ebb870af-6710-49c6-a8e0-a212efde0aef','N',2)
;

-- 21.02.2022 14:19:31
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206889,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',200306,214692,'Y',22,60,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','222f23f3-6d41-458f-8ba6-1e448b81776c','Y',40,2)
;

-- 21.02.2022 14:19:31
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206890,'Introduced on','The date this periodical was first introduced',200306,214693,'Y',7,70,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','8b1a1c46-b981-4bfe-82f0-740aeccd81d2','Y',50,2)
;

-- 21.02.2022 14:19:32
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206891,'Edition number',200306,214694,'Y',4000,80,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','c7c26f5c-3f2d-4ef3-8d15-5204c5ebec27','Y',60,5)
;

-- 21.02.2022 14:19:32
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206892,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200306,214687,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:19:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:19:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','bee3f286-c306-483d-8488-566a0903dfd5','Y',70,2,2)
;

-- 21.02.2022 14:19:32
UPDATE AD_Table SET AD_Window_ID=200122,Updated=TO_DATE('2022-02-21 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=200333
;

-- 21.02.2022 14:20:08
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsTranslationTab,IsReadOnly,OrderByClause,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU) VALUES (200307,'Periodical Subscriber',200122,30,'Y',200334,0,0,'Y',TO_DATE('2022-02-21 14:20:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:03','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','C_PeriodicalSubscriber.Created DESC','N',1,'N','D','Y','N','db15ddc0-c324-4c09-909e-0beb9764ee82')
;

-- 21.02.2022 14:20:09
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206893,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200307,214696,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','7b0d9033-db87-4144-acf1-407b82d43832','N',2)
;

-- 21.02.2022 14:20:09
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (206894,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200307,214697,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','0704b47c-f97a-43fa-b4f0-276e6ed2bae3','Y','N',4,2)
;

-- 21.02.2022 14:20:09
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206895,'Periodical',200307,214709,'Y',22,30,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','e5447d40-9a47-49d9-b5e0-ac7b1690be62','Y',10,2)
;

-- 21.02.2022 14:20:10
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206896,'Periodical Subscriber',200307,214703,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','4e0b609d-7141-4bb3-95fc-6b1b422dcf31','N',2)
;

-- 21.02.2022 14:20:10
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206897,'C_PeriodicalSubscriber_UU',200307,214704,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','1c3c11d6-fd7e-47ab-a68d-6194fa30cc99','N',2)
;

-- 21.02.2022 14:20:10
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206898,'Business Partner','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',200307,214705,'Y',22,40,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','b4330eee-60de-4306-ac74-44b064682fa9','Y',20,2)
;

-- 21.02.2022 14:20:11
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206899,'Subscribe Date','Date the contact actively subscribed','Date the contact subscribe the interest area',200307,214706,'Y',7,50,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','af5450d5-7848-4ec4-92a4-4197874566e0','Y',30,2)
;

-- 21.02.2022 14:20:11
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206900,'Subscribed until','The date to which the subscription lasts',200307,214707,'Y',7,60,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','91e30cb5-3242-45f0-8116-1cd58531e920','Y',40,2)
;

-- 21.02.2022 14:20:11
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206901,'Editions paid','The number of editions the customer paid for that are still left to be delivered',200307,214708,'Y',14,70,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','a2d282b4-99a2-4af8-b35f-8b19be0fbae5','Y',50,2)
;

-- 21.02.2022 14:20:11
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206902,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200307,214702,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','68fd9e45-6ff4-49a8-b3bf-dfa915e049a9','Y',60,2,2)
;

-- 21.02.2022 14:20:11
UPDATE AD_Table SET AD_Window_ID=200122,Updated=TO_DATE('2022-02-21 14:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=200334
;

-- 25.02.2022 13:13:48
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Created {0} new orders from this periodical',0,0,'Y',TO_DATE('2022-02-25 13:13:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-25 13:13:42','YYYY-MM-DD HH24:MI:SS'),100,200729,'OrdersFromPeriodicalCreated','D','b4019dd1-8efe-4ec4-b4e1-62793ef2c8e1')
;

SELECT register_migration_script('202202211525_IDEMPIERE-5186.sql') FROM dual
;