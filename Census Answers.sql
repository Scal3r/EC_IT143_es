/***********************************************************************************
******************************
NAME: Census Data Script
PURPOSE: Answers for "create answers" assignment 
MODIFICATION LOG:
Ver			Date			Author				Description
-----		----------		---------------		---------------------------------------------------------------------------
1.0			10/17/2024		ESILVA				Answers for "create answers" assignment 

RUNTIME:
Xm Xs
NOTES:

This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/


-- Q1:A young man is trying to buy a house and needs to see how much the average income is for someone with a masters degree like him shoud be making to know what he can afford.
-- A1: I pulled data twice here. The first time was to show how many demographics with a masters degree made more than 50k. The second was to see how many total entries there were that had a masters. We can see that on average with a master you will make more than 50k
SELECT DISTINCT column4, COUNT(column4) 
FROM
(SELECT column4, column15  FROM [EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'masters') AS  num
WHERE column15 = '>50k'
GROUP BY column4

SELECT DISTINCT column4, COUNT(column4) 
FROM
(SELECT column4, column15  FROM [EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'masters') AS  num
GROUP BY column4


-- Q2: The government is trying to find out how to help people make enough to live off of. What is the average income of a white male in america, and how much is the living cost
-- A2: I do not have cost of living in this table so I can not answer that one. However we can figure out how many white male americans make over 50k, and it is not the average. On average you will make less than that. 
SELECT COUNT (column15) from (
SELECT column9, column10,column14, column15 FROM [EC_IT143_DA].[dbo].[adult_data]
WHERE column9 = 'white' AND column10 ='male' AND column14 ='United-States')
AS num
WHERE column15 = '>50k' 

SELECT COUNT (column15) from (
SELECT column9, column10,column14, column15 FROM [EC_IT143_DA].[dbo].[adult_data]
WHERE column9 = 'white' AND column10 ='male' AND column14 ='United-States')
AS num





-- Q3: I want to explain to my students that working to get a higher question has benefits in life. How much does average income increase with each degree you get in higher education?
-- A3: Shows how many high school graduates, and doctorates repspectively. Make more than 50k compared to their totals. You can see that a much higher percentage of doctorates make more thank 50k compared to high school graduates. 


SELECT  COUNT(column15)  AS Total_higher_than_50K FROM
[EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'HS-Grad'  and column15 = '>50k'

SELECT  COUNT(column15)  AS Total FROM
[EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'HS-Grad' 

SELECT  COUNT(column15) AS Total_higher_than_50K FROM 
[EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'Doctorate'  and column15 = '>50k'

SELECT  COUNT(column15) AS Total  FROM
[EC_IT143_DA].[dbo].[adult_data]
WHERE column4 = 'Doctorate' 





-- Q4:(Student question by Catherine Kivindu)I am trying to find out if men and women are really equal. Are you more likely to make money if you are male or female?
-- A4: If we do the number of male and females that make more than 50k divided by the total number in the dataset we get a decimal which can be used as a percentage. It looks like males are at 30.6% and females are at 10.8%

SELECT  COUNT(column15)/21790.0 AS Male_higher_than_50K FROM 
[EC_IT143_DA].[dbo].[adult_data]
WHERE column10 = 'Male'  and column15 = '>50k'

SELECT  COUNT(column15)/10771.0 AS Female_higher_than_50K FROM 
[EC_IT143_DA].[dbo].[adult_data]
WHERE column10 = 'Female'  and column15 = '>50k'




