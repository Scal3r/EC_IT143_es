-- Q: How can I extract the first name from contact name?

-- A:Well, here is your problem...
-- CustomerName = Alejandra Camino -> Alejandra 
-- Google search "How to extract first name from combined name tsql stack overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT t.CustomerID
,t.CustomerName
,t.ContactName
,dbo.udf_parse_first_name(t.ContactName) AS ContactName_first_name
, '' AS ContactName_las_name
, t.Address
, t.City
, t.Country

FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
Order by 3;