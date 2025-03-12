backup database CM_NTA TO DISK = 'D:\Backup_BD\CM_NTA_2009.bak' with compression
go
backup database SUSDB TO DISK = 'D:\Backup_BD\SUSDB_2009.bak' with compression
go
dbcc shrinkdatabase ('CM_NTA',notruncate )
go
dbcc shrinkdatabase ('CM_NTA',truncateonly)
go
dbcc shrinkdatabase ('SUSDB',notruncate )
go
dbcc shrinkdatabase ('SUSDB',truncateonly)

