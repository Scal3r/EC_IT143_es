-- Q: How can I extract the first name from contact name?

-- A:Well, here is your problem...
-- CustomerName = Alejandra Camino -> Alejandra 
-- Google search "How to extract first name from combined name tsql stack overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

With s1 AS (SELECT t.ContactName
,Left(t.ContactName, CHARINDEX(' ', t.ContactName + ' ') - 1) AS first_name,
dbo.udf_parse_first_name(t.ContactName) AS first_name2
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t)
SELECT S1.*
from s1
WHERE s1.first_name <> s1.first_name2;