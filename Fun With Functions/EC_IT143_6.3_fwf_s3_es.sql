-- Q: How can I extract the first name from contact name?

-- A:Well, here is your problem...
-- CustomerName = Alejandra Camino -> Alejandra 

SELECT t.ContactName
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
ORDER BY 1;