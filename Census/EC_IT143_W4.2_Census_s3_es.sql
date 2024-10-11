-- Q: Is there more data for males or females?

-- A: Let's ask SQL Server and find out...

SELECT column10, COUNT(column10) AS 'number' from [EC_IT143_DA].[dbo].[adult_data] 
GROUP BY column10
