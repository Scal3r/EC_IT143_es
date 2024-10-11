DROP TABLE IF EXISTS dbo.adult_data;
GO

CREATE TABLE dbo.adult_data	
(column10 VARCHAR(25) NOT NULL,

CONSTRAINT PK_adult_data PRIMARY KEY CLUSTERED (column10 ASC));
GO