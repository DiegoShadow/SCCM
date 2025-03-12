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