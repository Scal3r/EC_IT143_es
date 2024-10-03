/*****************************************************************************************************************
NAME:    3.4 Create Answers
PURPOSE: To answer questions posed about adventure works.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/2/2024   Ethan Silva     1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: (Question by me, marginal complexity) What is the highest price of any product?
-- A1: First you have to use the max function to find the highest number, then you have to choose listprice. Because that is what the products are listed as in the Production.ProductListPriceHistory. 
select Max(ListPrice) from Production.ProductListPriceHistory

-- Q2:(Question by Joseph Karimu, marginal complexity) How many employees have the job title 'Sales Representative'?
-- A2: First you have to select the count for different job titles, then you have to find the right table. In this case the humanresources.employee table. Then you have to search where the job title is representative. 
select count(JobTitle)
from HumanResources.Employee
where JobTitle = 'Sales Representative';

-- Q3: (Question by Carlos Andres, moderate complexity) What is the total revenue generated in the year 2011?
-- A3: In order to get the total revenue you have to add all of the total sales for each line together. Then you have to make sure that it is looking for dates that are modified in 2011. luckily they are all the same dates, because I did not know how to do it for distinct dates. 
select Sum(LineTotal) from sales.SalesOrderDetail
where ModifiedDate = '2011-5-31';

-- Q4: (Question by Joseph Karimu, moderate complexity) What are the total number of orders and total revenue for each product category in 2014?
-- A4: Similiar to the last question we have to add together the numbes, but this time from two different categories. Then we check if they were modified in 2014 or not. 
select SUM(OrderQty), SUM(LineTotal) from sales.SalesOrderDetail
where ModifiedDate = '2014-5-31';

-- Q5: (Question by Justin Hemmert, greater complexity)  Can you list the number of employees with their First Name, Last Name, and Vacation hours that are equal to 50 and above? We may be implementing new policies to our vacation roll over limits. 
-- A5: Step 1 is to find the names of the 3 columns we need, then we have to use two different data bases to get what we need. After that we have to make sure we are only checking for vacation hours that are above 50 hours. 
select FirstName, LastName, VacationHours from HumanResources.Employee, Person.Person
Where VacationHours >=50;

-- Q6: (Question by Carlos Andres, greater complexity) For each salesperson, provide the total sales and for last year.
-- A6: I had to simplify this question because they did not have sales listed by category. Besides that I returned all of the total sales last year for each sales person. As long as they have not sold 0.
select SalesLastYear from Sales.SalesPerson
where SalesLastYear <> 0

-- Q7: (Question by Joseph Karimu, metadata) Which tables contain a column named 'EmployeeID'?
-- A7: This one was easy, all we had to do was use the generic "table name" and "INFORMATION_SCHEMA.COLUMNS" command to search the whole database for a column called EmployeeID.
select TABLE_NAME from INFORMATION_SCHEMA.COLUMNS
where COLUMN_NAME = 'EmployeeID';

-- Q8: (Question by me, metadata)  Can you find how many matching passwords there are in the person.passwords table?
-- A8: For this one I ran two commands. First I found the amount of distinct passwords. Then I found the amount of total passwords. Since they are the same we know that there are no matching passwords. 
select distinct count(PasswordHash) from Person.Password
select count(PasswordHash) from Person.Password

