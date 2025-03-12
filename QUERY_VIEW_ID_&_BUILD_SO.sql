//----------------------------------------------------//
//-- VIEW QUE MOSTRA A VERSÃO E NOME DA BUILD DO SO --//
//----------------------------------------------------//

//-- TABELA FONTE DOS DADOS --//
select * from Computer_System_DATA


select Version00 as 'OS build', case (Version00) 
WHEN '10.0.17134' THEN '1803'
WHEN '10.0.16299' THEN '1709'
WHEN '10.0.15063' THEN '1703'
WHEN '10.0.14393' THEN '1607'
WHEN '10.0.10586' THEN '1511'
ELSE 'Build desconhecida' END AS 'Version'
  from Operating_System_DATA


//-- Consulta atualizada até 1903 --//

select * from Computer_System_DATA

create view ID_BUILD_SO
as
select Version00 as 'OS build', case (Version00) 
WHEN '10.0.18362' THEN '1903'
WHEN '10.0.17763' THEN '1809'
WHEN '10.0.17134' THEN '1803'
WHEN '10.0.16299' THEN '1709'
WHEN '10.0.15063' THEN '1703'
WHEN '10.0.14393' THEN '1607'
WHEN '10.0.10586' THEN '1511'
ELSE 'Build desconhecida' END AS 'Version'
  from Operating_System_DATA

  //---------------------------------//

  select * from ID_BUILD_SO