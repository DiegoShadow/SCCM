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

