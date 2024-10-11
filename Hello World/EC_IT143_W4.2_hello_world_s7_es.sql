CREATE PROCEDURE dbo.usp_hello_world_load
AS


/***********************************************************************************
******************************
NAME: dbo.usp hello_world_load
PURPOSE: Hello World - Load user stored procedure

MODIFICATION LOG:
Ver		Date			Author			Description
-----	----------		-----------		-------------------------------------------------------------------------------
1.0		10/8/2024		JJAUSSI			1.	Built this script for EC IT440

RUNTIME:
1s

NOTES:
This script exitst to help me learn stop 7 of 8 inthe Answer Focused Approach for T-SQL Data Manipulation

******************************************************************************************************************/


-- 1)Reload data

TRUNCATE TABLE dbo.t_hello_world;

INSERT INTO dbo.t_hello_world
			SELECT v.my_message
					, v.current_date_time
					FROM dbo.v_hello_world_load AS v;

-- 2) Review results

SELECT t.*
	From dbo.t_hello_world AS t;