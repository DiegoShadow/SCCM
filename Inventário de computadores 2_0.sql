SELECT distinct

CS.name0 as 'Computador',

CS.domain0 as 'Domínio',

CS.UserName0 as 'Usuário',

BIOS.SerialNumber0 as 'Serial da BIOS',

SE.SerialNumber0 as 'Serial do Storage',

CS.Manufacturer0 as 'Fabricante',

CS.Model0 as 'Modelo',

OS.Caption0 as 'SO',

RAA.SMS_Assigned_Sites0 as 'Site',

RAM.TotalPhysicalMemory0 as 'Memória Total',

sum(isnull(LDisk.Size0,'0')) as 'Tamanho do HD',

sum(isnull(LDisk.FreeSpace0,'0')) AS 'Espaço disponível',

CPU.Name0 AS 'Processador'

from

v_GS_COMPUTER_SYSTEM CS right join v_GS_PC_BIOS BIOS on BIOS.ResourceID = CS.ResourceID

right join v_GS_SYSTEM SYS on SYS.ResourceID = CS.ResourceID

right join v_GS_OPERATING_SYSTEM OS on OS.ResourceID = CS.ResourceID

right join v_RA_System_SMSAssignedSites RAA on RAA.ResourceID = CS.ResourceID

right join V_GS_X86_PC_MEMORY RAM on RAM.ResourceID = CS.ResourceID

right join v_GS_Logical_Disk LDisk on LDisk.ResourceID = CS.ResourceID

right join v_GS_Processor CPU on CPU.ResourceID = CS.ResourceID

right join v_GS_SYSTEM_ENCLOSURE SE on SE.ResourceID = CS.ResourceID

where

LDisk.DriveType0 =3

group by

CS.Name0,

CS.domain0,

CS.Username0,

BIOS.SerialNumber0,

SE.SerialNumber0,

CS.Manufacturer0,

CS.Model0,

OS.Caption0,

RAA.SMS_Assigned_Sites0,

RAM.TotalPhysicalMemory0,

CPU.Name0