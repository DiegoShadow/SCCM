Select RSystem.Name0 As Name, RSystem.Netbios_Name0 As 'NetBios Name', SUM(PhyMem.Capacity0) As 'Total Physical Memory Installed (MB)',
OS.TotalVisibleMemorySize0 As 'OS Total Memory(MB)', GSystem.SystemType0 As 'System Type',
OS.Caption0 As OS, Processor.Name0 As Processor,PC.Model0 As Model
From v_R_System As RSystem
Inner Join v_GS_PHYSICAL_MEMORY As PhyMem on PhyMem.ResourceID = RSystem.ResourceID
Inner Join v_GS_OPERATING_SYSTEM As OS on OS.ResourceID = RSystem.ResourceID
Inner Join v_GS_SYSTEM As GSystem on GSystem.ResourceID = RSystem.ResourceID
Inner Join v_GS_PROCESSOR As Processor On Processor.ResourceID = RSystem.ResourceID
Inner Join v_GS_COMPUTER_SYSTEM As PC On PC.ResourceID = RSystem.ResourceID
Group By RSystem.Name0, RSystem.Netbios_Name0, OS.TotalVisibleMemorySize0,
GSystem.SystemType0,OS.Caption0, Processor.Name0,PC.Model0
Order By RSystem.Name0