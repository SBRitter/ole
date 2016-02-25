-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: org/kuali/ole/2.1/db.changelog-20151123.xml
-- *********************************************************************

-- Lock Database
-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_LOAD_KRCR_PARM_T_oracle::ole
INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'HOLDINGS_CALL_NUMBER_TYPE', '5A689075D35B7AEBE0404F8189D81922', '1', 'CONFG', 'LCC', 'To set Holdings Default value in editor', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_CALL_NUMBER_TYPE', '5A689075D35B7AEBE0404F8189D81923', '1', 'CONFG', 'LCC', 'To set Item Default value in editor', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'E-HOLDINGS_CALL_NUMBER_TYPE', '5A689075D35B7AEBE0404F8189D81924', '1', 'CONFG', 'LCC', 'To set Holdings Default value in editor', 'A', 'KUALI')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'RECEIPT_PRINTER_PAGE_SIZE', 'OLE7048', '1', 'CONFG', 'B7', 'This parameter value is used for configuring the page size for receipt printer.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'RECEIPT_PRINTER_FONT_SIZE', 'OLE7049', '1', 'CONFG', '13', 'This parameter value is used for configuring the font size for receipt printer.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'REGULAR_PRINTER_PAGE_SIZE', 'OLE7050', '1', 'CONFG', 'A4', 'This parameter value is used for configuring the page size for regular printer.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'REGULAR_PRINTER_FONT_SIZE', 'OLE7051', '1', 'CONFG', '10', 'This parameter value is used for configuring the font size for regular printer.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'FINE_CALC_WHILE_RENEW', 'OLE7052', '1', 'CONFG', 'false', 'This parameter value is used for configuring the system to calculate overdue fines while renew an item.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'CALL_NUMBER_MIGRATION_CHUNK_SIZE', 'OLEDEC7047', '1', 'CONFG', '1000', 'To define call number migration Chunk Size', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-SELECT', 'Select', 'AUTO_CLOSE_PO_THREAD_POOL_SIZE', 'OLE7053', '1', 'CONFG', '5', 'To define the size of thread for auto close PO executor class', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-SELECT', 'Select', 'MAX_NO_OF_THREAD_FOR_ORDER_IMPORT', 'OLE7054', '1', 'CONFG', '10', 'This parameter is having option to set default number of thread for order import.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'SRU_AVAILABLE_STATUSES', 'OLEDEC7055', '1', 'CONFG', 'AVAILABLE', 'To define the items statuses to which the sru response should responds as AVAILABLE item.You can provide multiple values with '';'' as separator', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'SRU_ON_HOLD_STATUSES', 'OLEDEC7056', '1', 'CONFG', 'ONHOLD', 'To define the items statuses to which the sru response should responds as ONHOLD item.You can provide multiple values with '';'' as separator', 'A', 'OLE')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOAD_KRCR_PARM_T_oracle', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 1, '7:9e2b0fd838a0069d499c6a91e59728bd', 'loadData', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_KRCR_PARM_T::ole
UPDATE KRCR_PARM_T SET VAL = 'PO + 0 $' WHERE PARM_NM = 'REENCUMBER_RECURRING_ORDERS'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRCR_PARM_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 2, '7:4b8bac07b079429600f713e4b495a922', 'update', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DS_ITEM_T_ADD::ole
ALTER TABLE OLE_DS_ITEM_T ADD DESC_OF_PIECES VARCHAR2(400)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_T_ADD', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 3, '7:9195e2f46e6a719bf93100823a3f6e31', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::ITEM_AUDIT_T::ole
CREATE TABLE ITEM_AUDIT_T (AUDIT_ID NUMBER(10) NOT NULL, FOREIGN_KEY_REF NUMBER(10), ACTOR VARCHAR2(40), UPDATE_DATE TIMESTAMP, COLUMN_UPDATED VARCHAR2(40), COLUMN_VALUE BLOB, OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_ITEM_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ITEM_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 4, '7:c6426909901d1d50e0f7f4476e615658', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::ITEM_AUDIT_S::ole
CREATE SEQUENCE ITEM_AUDIT_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ITEM_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 5, '7:fd527acefcf4c49add4a9ac71c8a55e9', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::BIB_AUDIT_T::ole
CREATE TABLE BIB_AUDIT_T (AUDIT_ID NUMBER(10) NOT NULL, FOREIGN_KEY_REF NUMBER(10), ACTOR VARCHAR2(40), UPDATE_DATE TIMESTAMP, COLUMN_UPDATED VARCHAR2(40), COLUMN_VALUE BLOB, OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_BIB_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('BIB_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 6, '7:1f3e9c6b844c26d85a4bf5577e4e7efa', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::BIB_AUDIT_S::ole
CREATE SEQUENCE BIB_AUDIT_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('BIB_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 7, '7:e039a5e8a1208884358b8dfa5c9c917f', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::HOLDINGS_AUDIT_T::ole
CREATE TABLE HOLDINGS_AUDIT_T (AUDIT_ID NUMBER(10) NOT NULL, FOREIGN_KEY_REF NUMBER(10), ACTOR VARCHAR2(40), UPDATE_DATE TIMESTAMP, COLUMN_UPDATED VARCHAR2(40), COLUMN_VALUE BLOB, OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_HOLDINGS_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('HOLDINGS_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 8, '7:458ea09629d0eb2d0ffe8b80da20c278', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::HOLDINGS_AUDIT_S::ole
CREATE SEQUENCE HOLDINGS_AUDIT_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('HOLDINGS_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 9, '7:39abd635b73322358845d51792de50ea', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_BAT_PRCS_PRFLE_CNST_T_ATT_VAL_ORACLE::ole
ALTER TABLE OLE_BAT_PRCS_PRFLE_CNST_T MODIFY ATT_VAL varchar2(500)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_BAT_PRCS_PRFLE_CNST_T_ATT_VAL_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 10, '7:edbb487537bc30b88b9f265c66a413c4', 'sql', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DS_HOLDINGS_T_ADD_CANCELLATION_CANDIDATE::ole
ALTER TABLE OLE_DS_HOLDINGS_T ADD CANCELLATION_CANDIDATE CHAR(1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_HOLDINGS_T_ADD_CANCELLATION_CANDIDATE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 11, '7:6d78e0988ed6e5e10cf1735cd9ce8885', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::RQST_NOTE_ADD::ole
ALTER TABLE OLE_DLVR_RQST_T ADD RQST_NOTE VARCHAR2(4000)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('RQST_NOTE_ADD', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 12, '7:ce622f267ae14d2658c07d9acdb6e78b', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_RETURN_HISTORY_T::ole
ALTER TABLE OLE_LOAN_INTRANSIT_HISTORY_T RENAME TO OLE_RETURN_HISTORY_T
/

ALTER TABLE OLE_RETURN_HISTORY_T ADD RETURNED_ITEM_STATUS VARCHAR2(200)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_RETURN_HISTORY_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 13, '7:a37b0219bda47584d5ae2ac2ce763ecc', 'renameTable, addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_RETURN_HISTORY_S_ORACLE::ole
RENAME OLE_LOAN_INTRANSIT_HISTORY_S to OLE_RETURN_HISTORY_S
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_RETURN_HISTORY_S_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 14, '7:e22c261e82b2c6beada0c31cd4662b36', 'sql', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::ADD_RCP_ROLE_GROUP::ole
ALTER TABLE OLE_E_RES_REC_T ADD E_RES_RCP_ROLE_ID VARCHAR2(40)
/

ALTER TABLE OLE_E_RES_REC_T ADD E_RES_RCP_GROUP_ID VARCHAR2(40)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ADD_RCP_ROLE_GROUP', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 15, '7:56484a78acc4bb73efd16413743bd059', 'addColumn (x2)', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_PUR_RCVNG_LN_ITM_NTE_T::ole
ALTER TABLE OLE_PUR_RCVNG_LN_ITM_NTE_T ADD OLE_NTE_ACK VARCHAR2(1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_PUR_RCVNG_LN_ITM_NTE_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 16, '7:69c62075353f547b61cd4d47a7f2c965', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::KRCR_PARM_T_UPDATE_PARAM_NAME::ole
UPDATE KRCR_PARM_T SET PARM_NM = 'EHOLDINGS_CALL_NUMBER_TYPE' WHERE NMSPC_CD ='OLE-DESC' and CMPNT_CD='Describe' and PARM_NM='E-HOLDINGS_CALL_NUMBER_TYPE' and APPL_ID='KUALI'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('KRCR_PARM_T_UPDATE_PARAM_NAME', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 17, '7:6365723584c571cfdac7ea881ed255ac', 'update', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_CIRC_RECORD_T1::ole
ALTER TABLE OLE_DLVR_CIRC_RECORD ADD ITEM_TYP_ID VARCHAR2(100)
/

ALTER TABLE OLE_DLVR_CIRC_RECORD ADD TEMP_ITEM_TYP_ID VARCHAR2(100)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_CIRC_RECORD_T1', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 18, '7:9d567dadcfeacc4f0a12ea062b594c65', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_RQST_T_ITEM_Q_INX_UK::ole
ALTER TABLE OLE_DLVR_RQST_T DROP CONSTRAINT OLE_DLVR_RQST_T_ITEM_Q_INX_UK DROP INDEX
/

ALTER TABLE OLE_DLVR_RQST_T ADD CONSTRAINT OLE_DLVR_RQST_T_ITEM_Q_INX_UK UNIQUE (OLE_PTRN_ID, PTRN_Q_POS, ITEM_UUID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_RQST_T_ITEM_Q_INX_UK', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 19, '7:c70e809763a48c2df89dcaf89af2ffe3', 'dropUniqueConstraint, addUniqueConstraint', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRF_T::ole
CREATE TABLE OLE_NG_BAT_PRF_T (PRF_ID NUMBER(10) NOT NULL, PRF_NM VARCHAR2(40), PRF_TYP VARCHAR2(40), CONTENT BLOB, OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_OLE_NG_BAT_PRF_T PRIMARY KEY (PRF_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRF_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 20, '7:6a7d3940c0aaf6f4996b496aebfa3c36', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRF_S::ole
CREATE SEQUENCE OLE_NG_BAT_PRF_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRF_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 21, '7:325fb8c3c8d50a777901517ca27c0c4c', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRCS_JOB_T::ole
CREATE TABLE OLE_NG_BAT_PRCS_JOB_T (JOB_ID NUMBER(10) NOT NULL, JOB_NAME VARCHAR2(100), PROFILE_TYPE VARCHAR2(40), PRF_ID NUMBER(10), JOB_TYPE VARCHAR2(40), CRON_EXP VARCHAR2(100), CREATED_BY VARCHAR2(40), CREATED_ON TIMESTAMP, NEXT_RUN_TIME TIMESTAMP, OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_OLE_NG_BAT_PRCS_JOB_T PRIMARY KEY (JOB_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRCS_JOB_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 22, '7:70fec36f51b792574b7cc78869bd00e3', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRCS_JOB_S::ole
CREATE SEQUENCE OLE_NG_BAT_PRCS_JOB_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRCS_JOB_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 23, '7:9eafcc49595d855e7f55207488c074a5', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_JOB_DETAILS_T::ole
CREATE TABLE OLE_NG_BAT_JOB_DETAILS_T (JOB_DETAIL_ID NUMBER(10) NOT NULL, JOB_NAME VARCHAR2(100), JOB_ID NUMBER(10), PROFILE_TYPE VARCHAR2(40), PROFILE_NAME VARCHAR2(100), CREATED_BY VARCHAR2(40), START_TIME TIMESTAMP, END_TIME TIMESTAMP, PER_COMPLETED VARCHAR2(40), TIME_SPENT VARCHAR2(40), TOTAL_RECORDS VARCHAR2(40), TOTAL_RECORDS_PRCSD VARCHAR2(40), STATUS VARCHAR2(40), OBJ_ID VARCHAR2(36), VER_NBR DECIMAL(8), CONSTRAINT PK_OLE_NG_BAT_JOB_DETAILS_T PRIMARY KEY (JOB_DETAIL_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_JOB_DETAILS_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 24, '7:b6c4509ac50869d75760e8a7f545d29b', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_JOB_DETAILS_S::ole
CREATE SEQUENCE OLE_NG_BAT_JOB_DETAILS_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_JOB_DETAILS_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 25, '7:9af29a082688e7225d21cd14a198ec46', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRF_ID_FK::ole
ALTER TABLE ole.OLE_NG_BAT_PRCS_JOB_T ADD CONSTRAINT OLE_NG_BAT_PRF_ID_FK FOREIGN KEY (PRF_ID) REFERENCES OLE_NG_BAT_PRF_T (PRF_ID) ON DELETE CASCADE
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRF_ID_FK', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 26, '7:85d85111e729dc5d2177122b215e606e', 'addForeignKeyConstraint', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_NG_BAT_PRCS_ID_FK::ole
ALTER TABLE ole.OLE_NG_BAT_JOB_DETAILS_T ADD CONSTRAINT OLE_NG_BAT_PRCS_ID_FK FOREIGN KEY (JOB_ID) REFERENCES OLE_NG_BAT_PRCS_JOB_T (JOB_ID) ON DELETE CASCADE
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NG_BAT_PRCS_ID_FK', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 27, '7:ca9b264632f1bdf7b3e6b244502bc67a', 'addForeignKeyConstraint', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_PTRN_BILL_FEE_TYP_T_ITM::ole
ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_TITLE VARCHAR2(600)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_AUTHOR VARCHAR2(200)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_TYPE VARCHAR2(100)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_CALL_NUM VARCHAR2(100)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_COPY_NUM VARCHAR2(20)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_ENUM VARCHAR2(100)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_CHRON VARCHAR2(100)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD ITM_LOC VARCHAR2(600)
/

ALTER TABLE OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD CHECK_IN_DT_TIME_OVR_RD TIMESTAMP
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_FEE_TYP_T_ITM', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 28, '7:390dddbf808f7b08b1a2794c3b328810', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_RQST_T_ORACLE::ole
ALTER TABLE OLE_DLVR_RQST_T MODIFY CRTE_DT_TIME TIMESTAMP
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_RQST_T_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 29, '7:8d7e4c3b76c9cefa84fa97188bc19d79', 'sql', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_RQST_HSTRY_REC_T_ORACLE::ole
ALTER TABLE OLE_DLVR_RQST_HSTRY_REC_T MODIFY CRTE_DT_TIME TIMESTAMP
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_RQST_HSTRY_REC_T_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 30, '7:a2967d45d609dee7e80167faf8040504', 'sql', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_CIRC_RECORD_T2::ole
ALTER TABLE OLE_DLVR_CIRC_RECORD ADD CHECK_IN_DT_TIME_OVR_RD TIMESTAMP
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_CIRC_RECORD_T2', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 31, '7:3919634cfd79a804d94a324fdc8fb000', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_CIRC_RECORD_T2_ORACLE::ole
ALTER TABLE OLE_DLVR_CIRC_RECORD MODIFY CHECK_IN_DT_TIME TIMESTAMP NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_CIRC_RECORD_T2_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 32, '7:b2d1a45a6230745bf0ef3e130347c01b', 'sql', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::PUR_PO_ITM_TI6::ole
CREATE INDEX PUR_PO_ITM_TI6 ON PUR_PO_ITM_T(OLE_VNDR_IT_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_PO_ITM_TI6', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 33, '7:d66ec545fa4cefc15f91be6cda0c53dd', 'createIndex', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_PTRN_BILL_FEE_TYP_T::ole
ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD CRDT_ISSUED DECIMAL
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD CRDT_REMAINING DECIMAL
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD PAY_CREDIT_NOTE VARCHAR2(500)
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD PAY_TRANSFER_NOTE VARCHAR2(500)
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD PAY_REFUND_NOTE VARCHAR2(500)
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_FEE_TYP_T ADD PAY_CAN_CRDT_NOTE VARCHAR2(500)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_FEE_TYP_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 34, '7:50274d2513f710b30e4ee17a244697cd', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DLVR_PTRN_BILL_T::ole
ALTER TABLE ole.OLE_DLVR_PTRN_BILL_T ADD CRDT_ISSUED DECIMAL
/

ALTER TABLE ole.OLE_DLVR_PTRN_BILL_T ADD CRDT_REMAINING DECIMAL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_PTRN_BILL_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 35, '7:3c1e9cc7cca08aaf740b6bf8122d6ce8', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_KRIM_PERM_T_oracle::ole
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10502', 'OLE10502', '1', '62', 'OLE-PTRN', 'Perform Credit Transfer', 'The posted amount will be credited from the bill amount or refund from the bill amount.', 'Y')
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10503', 'OLE10503', '1', '62', 'OLE-PTRN', 'Perforn Debit Transfer', 'The posted amount will be transferred from the bill amount or refund from the bill amount.', 'Y')
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10504', 'OLE10504', '1', '62', 'OLE-PTRN', 'Perform credit Payment', 'The posted amount will be credited from the bill amount or refund from the bill amount.', 'Y')
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10505', 'OLE10505', '1', '62', 'OLE-PTRN', 'Perform refund', 'The posted amount will be transferred from the bill amount or refund from the bill amount.', 'Y')
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10506', 'OLE10506', '1', '62', 'OLE-PTRN', 'Perform accept fine', 'The posted amount will be credited from the bill amount or refund from the bill amount.', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_T_oracle', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 36, '7:c617d7aee22ebb92cc77b7c9009a91e8', 'loadData', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_KRIM_PERM_ATTR_DATA_T_oracle::ole
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10700', 'OLE10700', '1', 'OLE10502', '73', '48', 'creditTransfer')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10701', 'OLE10701', '1', 'OLE10502', '73', '47', 'BillView')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10702', 'OLE10702', '1', 'OLE10503', '73', '48', 'debitTransfer')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10703', 'OLE10703', '1', 'OLE10503', '73', '47', 'BillView')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10704', 'OLE10704', '1', 'OLE10504', '73', '48', 'credit')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10705', 'OLE10705', '1', 'OLE10504', '73', '47', 'BillView')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10706', 'OLE10706', '1', 'OLE10505', '73', '48', 'refund')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10707', 'OLE10707', '1', 'OLE10505', '73', '47', 'BillView')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10708', 'OLE10708', '1', 'OLE10506', '73', '48', 'accept')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10709', 'OLE10709', '1', 'OLE10506', '73', '47', 'BillView')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_ATTR_DATA_T_oracle', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 37, '7:854c89df90b811ade8ea95d10cf55de4', 'loadData', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_KRIM_ROLE_PERM_T_oracle::ole
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10800', 'OLE10800', 'OLE10076', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10801', 'OLE10801', 'OLE10076', 'OLE10503', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10802', 'OLE10802', 'OLE10074', 'OLE10504', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10803', 'OLE10803', 'OLE10074', 'OLE10505', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10804', 'OLE10804', 'OLE10073', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10805', 'OLE10805', 'OLE10073', 'OLE10503', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10806', 'OLE10806', 'OLE10073', 'OLE10504', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10807', 'OLE10807', 'OLE10073', 'OLE10505', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE10808', 'OLE10808', 'OLE10073', 'OLE10506', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_ROLE_PERM_T_oracle', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 38, '7:be3c17fe3d6c89b06885397c941cab3d', 'loadData', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_DSK_FEE_TYPE_T::ole
CREATE TABLE OLE_CRCL_DSK_FEE_TYPE_T (OLE_CRCL_DSK_FEE_TYPE_ID VARCHAR2(40), OLE_CRCL_DSK_ID VARCHAR2(40), FEE_TYP_ID VARCHAR2(40))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_DSK_FEE_TYPE_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 39, '7:43d7506fa237ecbee270fa929281e595', 'createTable', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_DSK_FEE_TYP_PK::ole
ALTER TABLE OLE_CRCL_DSK_FEE_TYPE_T ADD CONSTRAINT OLE_CRCL_DSK_FEE_TYP_PK PRIMARY KEY (OLE_CRCL_DSK_FEE_TYPE_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_DSK_FEE_TYP_PK', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 40, '7:e7ba9f263c87ce54fc4cc1908c9eb252', 'addPrimaryKey', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_DSK_FEE_TYP_FK::ole
ALTER TABLE OLE_CRCL_DSK_FEE_TYPE_T ADD CONSTRAINT OLE_CRCL_DSK_FK FOREIGN KEY (FEE_TYP_ID) REFERENCES OLE_DLVR_PTRN_FEE_TYPE_T (FEE_TYP_ID) ON DELETE CASCADE
/

ALTER TABLE OLE_CRCL_DSK_FEE_TYPE_T ADD CONSTRAINT OLE_CRCL_FEE_TYPE_FK FOREIGN KEY (OLE_CRCL_DSK_ID) REFERENCES OLE_CRCL_DSK_T (OLE_CRCL_DSK_ID) ON DELETE CASCADE
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_DSK_FEE_TYP_FK', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 41, '7:029615a85edb558d768d4ec9700a8139', 'addForeignKeyConstraint (x2)', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_FEE_TYP_INDEX::ole
CREATE INDEX OLE_CRCL_FEE_TYPE_I ON OLE_CRCL_DSK_FEE_TYPE_T(FEE_TYP_ID)
/

CREATE INDEX OLE_CRCL_DSK_I ON OLE_CRCL_DSK_FEE_TYPE_T(OLE_CRCL_DSK_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_FEE_TYP_INDEX', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 42, '7:f6152685f06e502adca793213cbcde8b', 'createIndex (x2)', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_DSK_FEE_TYPE_S::ole
CREATE SEQUENCE OLE_CRCL_DSK_FEE_TYPE_S START WITH 1 INCREMENT BY 1 ORDER
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_DSK_FEE_TYPE_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 43, '7:a9e980f1cd72bc0436072326f717b90b', 'createSequence', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_CRCL_DSK_T_INSERT::ole
ALTER TABLE ole.OLE_CRCL_DSK_T ADD FROM_EMAIL VARCHAR2(100)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CRCL_DSK_T_INSERT', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 44, '7:9b04684ee7970c1476f897aa7d8d06b7', 'addColumn', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_PTRN_PAY_STA_T_ID_ORACLE::ole
INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_FEE_FULLY_TRANSFERED', 'Fee Fully Transfered', '2c3def30-95sa-4c4e-8d75-5e17cf970677', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_FEE_PARTIALLY_TRANSFERED', 'Fee Partially Transfered', '9k7def30-95sa-4c4e-9j53-5e17cf970677', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_FULL_CRDT_ISSUED', 'Full credit issued', '56jdef30-95ws-4c4e-7r75-5e17cf970677', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_PAR_CRDT_ISSUED', 'Partial credit issued', '985def30-95op-4c4e-8d75-5e17cf970689', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_CRDT_FULLY_TRANSFERED', 'Credit fully transfered', '3v4def30-95sa-4c4e-8d75-8y75cf970677', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_CRDT_PAR_TRANSFERED', 'Credit partially transfered', '9j56ef30-95rt-4c4e-8d75-9e98cf970857', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_FULLY_PAID_CRDT', 'Fully paid with credit', '8k62ef30-95ta-4d4e-9j75-5e17cf978952', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_PAR_PAID_CRDT', 'Partially paid with credit', '4d389f30-95sa-5e4e-8d89-5e17cf976532', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_FULLY_REFUNDED', 'Fully Refunded', '8t689f30-95sa-7d4f-8d89-5e17cf976589', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_PAR_REFUNDED', 'Partially Refunded', '9k789f30-86nw-7d4f-8d89-9e17cf976599', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_CRDT_FULLY_CANCELLED', 'Credit Fully Cancelled', '8s789f30-86nw-8d4f-8d89-7j17cf97589', '1')
/

INSERT INTO OLE_PTRN_PAY_STA_T (PAY_STA_ID, PAY_STA_CODE, PAY_STA_NAME, OBJ_ID, VER_NBR) VALUES (OLE_PTRN_PAY_STA_S.NEXTVAL, 'PAY_CRDT_PAR_CANCELLED', 'Credit Partially Cancelled', '9j889f30-96nw-5d4f-8d89-7j17cf97519', '1')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_PTRN_PAY_STA_T_ID_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 45, '7:a37a2c4d9c4bd89fa25a37b53fa9235e', 'sql (x12)', '', 'EXECUTED', '3.2.0')
/

-- Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_PMT_MTHD_T_ID_ORACLE::ole
INSERT INTO OLE_PMT_MTHD_T (OLE_PMT_MTHD_ID, PMT_MTHD, PMT_MTHD_DESC, VER_NBR, OBJ_ID,ROW_ACT_IND) VALUES (OLE_PMT_MTHD_T_SEQ.NEXTVAL, 'Transferred', 'Transferred','1', 'BJV56E36-7GHJ-HJ-5689-56234080958E', 'Y')
/

INSERT INTO OLE_PMT_MTHD_T (OLE_PMT_MTHD_ID, PMT_MTHD, PMT_MTHD_DESC, VER_NBR, OBJ_ID,ROW_ACT_IND) VALUES (OLE_PMT_MTHD_T_SEQ.NEXTVAL, 'Refund Issued', 'Refund Issued','1', 'AXG56E36-8OHJ-7SD8-8952-4253408098K9', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_PMT_MTHD_T_ID_ORACLE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', SYSTIMESTAMP, 46, '7:64a28339e327f57e1f5bfc6da5893428', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

-- Release Database Lock
-- Release Database Lock
