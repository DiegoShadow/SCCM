//---------- Tabelas importantes -------------------//
select * from Disk_DATA
select * from Disk_HIST
select * from Computer_System_DATA
select * from COMPUTER_SYSTEM_PRODUCT_DATA
select * from COMPUTER_SYSTEM_PRODUCT_DATA

sp_helpconstraint

//------------------------------------------//

ALTER VIEW PC_DISK_INFO
AS
SELECT A.Name00 AS COMPUTADOR, A.UserName00 AS USUARIO,D.Model00 AS MODELO_DISCO,D.Size00 AS TAMANHO_DISCO,
A.Manufacturer00 AS FABRICANTE,A.Model00 AS MODELO, B.IdentifyingNumber00 NUMERO_DE_SERIE,
C.Description00 AS DESCRIÇÃO,C.Caption00 AS SO

FROM Computer_System_DATA as A LEFT JOIN COMPUTER_SYSTEM_PRODUCT_DATA AS B
ON A.MachineID = B.MachineID JOIN Operating_System_DATA AS C
ON B.MachineID = C.MachineID JOIN Disk_HIST AS D
ON C.MachineID = D.MachineID