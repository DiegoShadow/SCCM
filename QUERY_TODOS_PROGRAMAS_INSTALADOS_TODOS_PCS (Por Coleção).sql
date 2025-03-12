// 14-10-2022

ALTER VIEW APLICATIVOS_INSTALADOS_AREA
AS
Select
SD.Name0 AS COMPUTADOR,
PF.DisplayName0 AS NOME_DO_PROGRAMA,
PF.ProdID0 AS ID_DO_PRODUTO,
PF.Publisher0 AS EDITOR,
PF.Version0 AS VERSÃO,
COL.Name AS 'ÁREA'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_Add_Remove_Programs PF on SD.ResourceID = PF.ResourceID
Where COL.Name IN ( 'GERTI','GEINF','FLEX-BANCADA','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','FLEX-NOTEBOOKS','GEREL','GEAUD','Líderes e Diretores','SERVERS','TODOS DISPOSITIVOS' )
Group By SD.Name0, COL.CollectionID, COL.Name, PF.DisplayName0,
PF.ProdID0, PF.Publisher0, PF.Version0
--Order By SD.Name0

//--------------------------- ANTIGOS

Select
SD.Name0 'Machine Name',
PF.DisplayName0 'Display Name',
PF.ProdID0 'Product ID',
PF.Publisher0 Publisher,
PF.Version0 Version,
COL.Name AS 'AREA'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_Add_Remove_Programs PF on SD.ResourceID = PF.ResourceID
Where COL.Name IN ('GEINF','GERTI')
Group By SD.Name0, COL.CollectionID, COL.Name, PF.DisplayName0,
PF.ProdID0, PF.Publisher0, PF.Version0
Order By SD.Name0

//-----------------------------------------

Select
SD.Name0 'Machine Name',
PF.DisplayName0 'Display Name',
PF.ProdID0 'Product ID',
PF.Publisher0 Publisher,
PF.Version0 Version
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_Add_Remove_Programs PF on SD.ResourceID = PF.ResourceID
Where COL.Name IN ( 'GERTI','GEINF','COATU','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','GEPES','GEREL' )
Group By SD.Name0, COL.CollectionID, COL.Name, PF.DisplayName0,
PF.ProdID0, PF.Publisher0, PF.Version0
Order By SD.Name0

//-----------------------------------------


ALTER VIEW APLICATIVOS_INSTALADOS_AREA
AS
Select
SD.Name0 AS COMPUTADOR,
PF.DisplayName0 AS NOME_DO_PROGRAMA,
PF.ProdID0 AS ID_DO_PRODUTO,
PF.Publisher0 AS EDITOR,
PF.Version0 AS VERSÃO,
COL.Name AS 'ÁREA'
From v_R_System SD
Join v_FullCollectionMembership FCM on SD.ResourceID = FCM.ResourceID
Join v_Collection COL on FCM.CollectionID = COL.CollectionID
Join v_Add_Remove_Programs PF on SD.ResourceID = PF.ResourceID
Where COL.Name IN ( 'GERTI','GEINF','COATU','GPREV','COCAD','PRESI','GEJUR','GSAUD','CONIN','GPLAC','CCONT','GEPES','GEREL','GEAUD','OUTROS','SERVERS','TODOS DISPOSITIVOS' )
Group By SD.Name0, COL.CollectionID, COL.Name, PF.DisplayName0,
PF.ProdID0, PF.Publisher0, PF.Version0
--Order By SD.Name0