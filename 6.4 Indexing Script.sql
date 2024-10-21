/*
Missing Index Details from SQLQuery2.sql - (local).AdventureWorks2019 (SCAL3R\Scal3 (78))
The Query Processor estimates that implementing the following index could improve the query cost by 91.0545%.
*/

/*
USE [AdventureWorks2019]
GO
CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
ON [Person].[Address] ([City])

GO
*/

USE [AdventureWorks2019]
GO
CREATE NONCLUSTERED INDEX IX_my_index
ON [Person].[Address] ([City])

Go

select pa.*
from Person.Address AS pa
Where pa.city = 'Bothell';