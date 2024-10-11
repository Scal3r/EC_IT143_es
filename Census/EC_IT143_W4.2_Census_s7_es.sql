CREATE PROCEDURE dbo.usp_adult_data_load
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
-- 1)Reload data

TRUNCATE TABLE dbo.adult_data;

INSERT INTO dbo.adult_data
			SELECT v.column10
					FROM dbo.v_adult_data_load AS v;

-- 2) Review results

SELECT t.*
	From dbo.adult_data AS t;