CREATE FUNCTION [dbo].[udf_parse_first_name]
(@v_combined_name AS VARCHAR(500))
RETURNS VARCHAR (100)


/***********************************************************************************
******************************
NAME: My Script Name
PURPOSE: My script purpose...
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
RUNTIME:
Xm Xs
NOTES:
This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/

BEGIN 
DECLARE @v_first_name AS VARCHAR(100);

SET @v_first_name = LEFT(@v_combined_name, CHARINDEX (' ', @v_combined_name + ' ') - 1);

RETURN @v_first_name;

end;
go