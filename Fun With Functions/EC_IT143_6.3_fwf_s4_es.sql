-- Q: How can I extract the first name from contact name?

-- A:Well, here is your problem...
-- CustomerName = Alejandra Camino -> Alejandra 
-- Google search "How to extract first name from combined name tsql stack overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT t.ContactName
,Left(t.ContactName, CHARINDEX(' ', t.ContactName + ' ') - 1) AS first_name
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
Order By 1;