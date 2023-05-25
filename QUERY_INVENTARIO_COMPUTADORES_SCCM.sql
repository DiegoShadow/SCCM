//-----------------------------------------------//

SELECT Name00 AS COMPUTADOR, UserName00 AS USUARIO, Manufacturer00 AS FABRICANTE, Model00 AS MODELO FROM Computer_System_DATA //--Select Simples//

select count(*) from dbo.COMPUTER_SYSTEM_PRODUCT_DATA //--Contar número de dados da tabela--//

//-----------------------------------------------//


//----------LEFT JOIN A,B----------//

ALTER VIEW INVENTARIO_COMPUTADORES_SCCM
AS
SELECT A.Name00 AS COMPUTADOR, A.UserName00 AS USUARIO, A.Manufacturer00 AS FABRICANTE, A.Model00 AS MODELO, B.IdentifyingNumber00 NUMERO_DE_SERIE,
FROM Computer_System_DATA as A LEFT JOIN COMPUTER_SYSTEM_PRODUCT_DATA AS B
on A.MachineID = B.MachineID

SELECT * FROM INVENTARIO_COMPUTADORES_SCCM

//----------LEFT JOIN A,B,C----------//

ALTER VIEW INVENTARIO_COMPUTADORES_SCCM
AS
SELECT A.Name00 AS COMPUTADOR, A.UserName00 AS USUARIO, A.Manufacturer00 AS FABRICANTE, A.Model00 AS MODELO, B.IdentifyingNumber00 NUMERO_DE_SERIE,C.Description00 AS DESCRIÇÃO,C.Caption00 AS SO
FROM Computer_System_DATA as A LEFT JOIN COMPUTER_SYSTEM_PRODUCT_DATA AS B
ON A.MachineID = B.MachineID JOIN Operating_System_DATA AS C
ON B.MachineID = C.MachineID

SELECT * FROM INVENTARIO_COMPUTADORES_SCCM

//----------LEFT JOIN A,B,C e D----------//

ALTER VIEW INVENTARIO_COMPUTADORES_SCCM
AS
SELECT A.Name00 AS COMPUTADOR, A.UserName00 AS USUARIO, A.Manufacturer00 AS FABRICANTE, A.Model00 AS MODELO, B.IdentifyingNumber00 NUMERO_DE_SERIE,C.Description00 AS DESCRIÇÃO,C.Caption00 AS SO
FROM Computer_System_DATA as A LEFT JOIN COMPUTER_SYSTEM_PRODUCT_DATA AS B
ON A.MachineID = B.MachineID JOIN Operating_System_DATA AS C
ON B.MachineID = C.MachineID

SELECT * FROM INVENTARIO_COMPUTADORES_SCCM

//---------------------//
// Tabelas Utilizadas  //
//---------------------//

select * from Computer_System_DATA
select * from Operating_System_DATA
select * from COMPUTER_SYSTEM_PRODUCT_DATA