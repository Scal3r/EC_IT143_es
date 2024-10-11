DROP VIEW IF EXISTS dbo.v_adult_data_load;
GO

CREATE VIEW dbo.v_adult_data_load
AS 
/***********************************************************************************
******************************
NAME: dbo.v_adult_data_load
PURPOSE: Create the adult_data view

MODIFICATION LOG:
Ver		 Date			Author			Description
-----	 ----------		-----------		-------------------------------------------------------------------------------
1.0 10/10/20242			ESILVA			1. Built this script for EC IT440
RUNTIME:
1s
NOTES:

This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/


SELECT column10, COUNT(column10) AS 'number' from [EC_IT143_DA].[dbo].[adult_data] 
GROUP BY column10
