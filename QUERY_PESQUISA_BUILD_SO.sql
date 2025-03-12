ALTER VIEW PESQUISA_BUILD_SO
AS
SELECT A.Name00 AS COMPUTADOR,C.Caption00 AS SO,C.MUILanguages00 AS IDIOMA,C.Version00 AS BUILD,C.Description00 AS DESCRIÇÃO
FROM Computer_System_DATA as A LEFT JOIN COMPUTER_SYSTEM_PRODUCT_DATA AS B
ON A.MachineID = B.MachineID JOIN Operating_System_DATA AS C
ON B.MachineID = C.MachineID

SELECT * FROM PESQUISA_BUILD_SO

//---------------------//
// Tabelas Utilizadas  //
//---------------------//

select * from Computer_System_DATA
select * from Operating_System_DATA
select * from COMPUTER_SYSTEM_PRODUCT_DATA

