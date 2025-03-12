select v_ActiveClients.Name , version0 from v_Add_Remove_Programs

     inner join dbo.v_ActiveClients

     on v_Add_Remove_Programs.ResourceID=v_ActiveClients.MachineResourceID

     where DisplayName0='Sonicwall NetExtender' or DisplayName0='Dell Sonicwall NetExtender'