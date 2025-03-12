select sys.Name0, usr.Unique_User_Name0
from v_UsersPrimaryMachines upm
join v_R_System sys
on sys.ResourceId = upm.MachineId
join v_R_User usr
on usr.ResourceID = upm.UserResourceID