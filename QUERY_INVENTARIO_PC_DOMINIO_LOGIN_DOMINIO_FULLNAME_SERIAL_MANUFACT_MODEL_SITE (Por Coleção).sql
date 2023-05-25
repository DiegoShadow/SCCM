//---------------------------------------- V1.0
Select
SD.Name0 'Machine Name',
SD.Resource_Domain_OR_Workgr0 'Resource Domain',
SD.User_Name0 'Login ID',
SD.User_Domain0 'Account Domain',
USR.Full_User_Name0 'Full Name',
PCB.SerialNumber0 'Serial Number',
CS.Manufacturer0 Manufacturer,
CS.Model0 Model,
SAS.SMS_Assigned_Sites0 'Assigned Site Code',
COL.NAME  AS 'NOME'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_R_User USR on SD.User_Name0 = USR.User_Name0
Join v_GS_PC_BIOS PCB on SD.ResourceID = PCB.ResourceID
Join v_GS_COMPUTER_SYSTEM CS on SD.ResourceID = CS.ResourceID
Join v_RA_System_SMSAssignedSites SAS on SD.ResourceID = SAS.ResourceID
Where COL.Name = 'GERTI' 

//---------------------------------------- V1.1

Select
SD.Name0 'Machine Name',
SD.Resource_Domain_OR_Workgr0 'Resource Domain',
SD.User_Name0 'Login ID',
SD.User_Domain0 'Account Domain',
USR.Full_User_Name0 'Full Name',
PCB.SerialNumber0 'Serial Number',
CS.Manufacturer0 Manufacturer,
CS.Model0 Model,
SAS.SMS_Assigned_Sites0 'Assigned Site Code'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_R_User USR on SD.User_Name0 = USR.User_Name0
Join v_GS_PC_BIOS PCB on SD.ResourceID = PCB.ResourceID
Join v_GS_COMPUTER_SYSTEM CS on SD.ResourceID = CS.ResourceID
Join v_RA_System_SMSAssignedSites SAS on SD.ResourceID = SAS.ResourceID
Where COL.Name IN ('GERTI','GEINF','COATU','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','GEPES','GEREL','GEAUD','OUTROS','CENTRAL')


//---------------------------------------- V1.2

ALTER VIEW INVENTARIO_COMPUTADORES_SCCM_AREA
AS
SELECT
SD.Name0 AS COMPUTADOR,
SD.Resource_Domain_OR_Workgr0 AS DOMÍNIO_DE_ORIGEM,
SD.User_Name0 AS LOGIN,
SD.User_Domain0 AS DOMÍNIO,
USR.Full_User_Name0 AS NOME_COMPLETO,
PCB.SerialNumber0 AS NÚMERO_DE_SÉRIE,
CS.Manufacturer0 AS FABRICANTE,
CS.Model0 AS MODELO,
SAS.SMS_Assigned_Sites0 AS SITE_SCCM,
COL.NAME  AS 'ÁREA'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_R_User USR on SD.User_Name0 = USR.User_Name0
Join v_GS_PC_BIOS PCB on SD.ResourceID = PCB.ResourceID
Join v_GS_COMPUTER_SYSTEM CS on SD.ResourceID = CS.ResourceID
Join v_RA_System_SMSAssignedSites SAS on SD.ResourceID = SAS.ResourceID
Where COL.Name IN ('GERTI','GEINF','COATU','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','GEPES','GEREL','GEAUD','OUTROS','CENTRAL')



//-------------------------------------------------------------------------------//
// Utilizadas em INVENTARIO_COMPUTADORES_SCCM_AREA e APLICATIVOS_INSTALADOS_AREA //
//-------------------------------------------------------------------------------//

select * from v_R_System
select * from v_FullCollectionMembership
select * from v_Collection
select * from v_R_User USR
select * from v_GS_PC_BIOS
select * from v_GS_COMPUTER_SYSTEM
select * from v_RA_System_SMSAssignedSites
select * from v_R_System SD
select * from v_FullCollectionMembership
select * from v_Collection
select * from v_Add_Remove_Programs

//-- Dados de Sistema Operacional
select * from Operating_System_DATA

//---------------------------------------- V1.3 FINAL 14-10-2022

ALTER VIEW INVENTARIO_COMPUTADORES_SCCM_AREA
AS
SELECT
SD.Name0 AS COMPUTADOR,
SD.Resource_Domain_OR_Workgr0 AS DOMÍNIO_DE_ORIGEM,
SD.User_Name0 AS LOGIN,
SD.User_Domain0 AS DOMÍNIO,
USR.Full_User_Name0 AS NOME_COMPLETO,
PCB.SerialNumber0 AS NÚMERO_DE_SÉRIE,
CS.Manufacturer0 AS FABRICANTE,
CS.Model0 AS MODELO,
SAS.SMS_Assigned_Sites0 AS SITE_SCCM,
COL.NAME  AS 'ÁREA'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_R_User USR on SD.User_Name0 = USR.User_Name0
Join v_GS_PC_BIOS PCB on SD.ResourceID = PCB.ResourceID
Join v_GS_COMPUTER_SYSTEM CS on SD.ResourceID = CS.ResourceID
Join v_RA_System_SMSAssignedSites SAS on SD.ResourceID = SAS.ResourceID
Where COL.Name IN ('GERTI','GEINF','OUTROS-COMPUTADORES','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','GEPES','GEREL','GEAUD','FLEX-BANCADA','Líderes e Diretores','CENTRAL')