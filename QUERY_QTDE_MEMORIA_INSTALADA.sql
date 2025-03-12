select sys.netbios_name0 [Computador], mem.banklabel0 [Etiqueta do Slot], mem.capacity0 [Total de RAM (MB)], mem.FormFactor0 [Form Factor],
MEM.memorytype0 [Memory Type], mem.tag0 [TAG] from v_gs_physical_memory as MEM
inner join v_r_system as SYS on SYS.resourceid=MEM.resourceid 
order by  sys.netbios_name0,mem.tag0

//------------------------------//

select sys.netbios_name0 [Computador],  mem.capacity0 [Total de RAM (MB)], mem.tag0 [Id do Slot] from v_gs_physical_memory as MEM
inner join v_r_system as SYS on SYS.resourceid=MEM.resourceid 
order by  sys.netbios_name0,mem.tag0