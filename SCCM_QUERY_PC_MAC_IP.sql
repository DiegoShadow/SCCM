SELECT v_RA_System_ResourceNames.Resource_Names0 AS [Nome do Recurso], v_RA_System_MACAddresses.MAC_Addresses0 AS [MAC Address],
v_RA_System_IPAddresses.IP_Addresses0 AS [IP Address]
FROM v_RA_System_MACAddresses INNER JOIN
v_RA_System_ResourceNames ON v_RA_System_MACAddresses.ResourceID = v_RA_System_ResourceNames.ResourceID INNER JOIN
v_RA_System_IPAddresses ON v_RA_System_MACAddresses.ResourceID = v_RA_System_IPAddresses.ResourceID

