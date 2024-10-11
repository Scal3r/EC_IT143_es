DROP VIEW IF EXISTS dbo.v_Movies;
GO

CREATE VIEW dbo.v_Movies_load
AS 
/***********************************************************************************
******************************
NAME: dbo.v_Movies
PURPOSE: Create the Movies

MODIFICATION LOG:
Ver		 Date			Author			Description
-----	 ----------		-----------		-------------------------------------------------------------------------------
1.0		10/10/2024		ESILVA			1. Built this script for EC IT440
RUNTIME:
1s
NOTES:

This is where I talk about what this script is, why I built it, and other stuff...
******************************************************************************************************************/



SELECT MAX(popularity) AS 'Max Popularity' FROM [EC_IT143_DA].[dbo].[Movies] 
