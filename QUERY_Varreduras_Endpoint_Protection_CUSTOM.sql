//--- Fontes das informações ---//

select * from vEP_LastMalware

select * from vEP_MalwareCleanActionState

select * from EP_MalwarePath

select * from vSMS_G_System_AntimalwareInfectionStatus

select * from v_R_System

//-----------------------------//

SELECT
v_R_System.Name0 as 'Nome do Computador',
vEP_MalwareCleanActionState.LastDetectionTime as '