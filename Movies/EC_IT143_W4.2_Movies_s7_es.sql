CREATE PROCEDURE dbo.usp_Movies_load
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

-- 1)Reload data

TRUNCATE TABLE dbo.Movies;

INSERT INTO dbo.Movies
			SELECT v.popularity
					FROM dbo.v_Movies_load AS v;

-- 2) Review results

SELECT t.*
	From dbo.Movies AS t;