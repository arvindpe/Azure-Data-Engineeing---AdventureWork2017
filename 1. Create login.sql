
CREATE LOGIN mrp WITH PASSWORD = N'password@123'
create user mrp for login mrk


select s.name as SchemaName,
t.name as TableName
from sys.tables t
inner join sys.schemas s
on t.schema_id= s.schema_id
where s.name = 'SalesLT'

