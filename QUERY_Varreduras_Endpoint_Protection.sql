create view VARREDURAS_ENDPOINT
as
SELECT
v_R_System.Name0 as 'Nome do Computador',
v_GS_OPERATING_SYSTEM.Caption0 as 'Sistema Operacional',
v_GS_AntimalwareHealthStatus.LastQuickScanDateTimeStart as 'Inicio do ultimo Quick Scan',
v_GS_AntimalwareHealthStatus.LastQuickScanDateTimeEnd as 'Fim do ultimo Quick Scan',
v_GS_AntimalwareHealthStatus.LastFullScanDateTimeStart as 'Inicio do ultimo Full Scan',
v_GS_AntimalwareHealthStatus.LastFullScanDateTimeEnd as 'Fim do ultimo Full Scan',
v_GS_AntimalwareHealthStatus.LastQuickScanAge as 'Dias desde o ultimo Quick Scan',
v_GS_AntimalwareHealthStatus.LastFullScanAge as 'Dias desde o ultimo Full Scan'
FROM
v_GS_AntimalwareHealthStatus
INNER JOIN
v_R_System ON v_GS_AntimalwareHealthStatus.ResourceID =
v_R_System.ResourceID INNER JOIN
v_GS_OPERATING_SYSTEM ON v_R_System.ResourceID = v_GS_OPERATING_SYSTEM.ResourceID
