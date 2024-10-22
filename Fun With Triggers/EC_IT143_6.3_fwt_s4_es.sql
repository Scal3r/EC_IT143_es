CREATE TRIGGER trg_hello_wordl_last_mod ON dbo.t_hello_world
AFTER UPDATE
AS


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

UPDATE dbo.t_hello_world
SET 
last_modified_date = GETDATE()
WHERE my_message IN 
(
SELECT DISTINCT 
my_message 
FROM inserted
);