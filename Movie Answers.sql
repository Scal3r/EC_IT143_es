/***********************************************************************************
******************************
NAME: Answers for Movie Data
PURPOSE: Answers to 4 questions that have been made for the data I found about movies
MODIFICATION LOG:
Ver			Date			Author				Description
-----		----------		---------------		---------------------------------------------------------------------------
1.0			10/17/2024		ESILVA				Answers to 4 questions that have been made for the data I found about movies

RUNTIME:
Xm Xs
NOTES:

This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/


-- Q1: Someone is just looking for a new movie to watch and wants to know what the best movies there are that he hasnt seen. He loves action movies and wants to see an action movie.
-- A1: This code shows the top 100 action movie with the highest vote score. 

SELECT TOP 100 title, genre, vote_average 

FROM [EC_IT143_DA].[dbo].[Movies] 

WHERE genre LIKE '%action%'

ORDER BY vote_average DESC





-- Q2: A movie theater wants to do reruns of popular movies. What movies have been most popular for kids that can be played profitably in the theater. 
-- A2: This code returns the top 100 most popular movies that have 'family' as part of the genre so that it is suitable for kids. 

SELECT TOP 100 title, genre, popularity 

FROM [EC_IT143_DA].[dbo].[Movies] 

WHERE genre LIKE '%family%'

ORDER BY popularity DESC




-- Q3: A producer is trying to make the next big movie. What movie themes seem to be the most popular historically to base his new movie off of. 
-- A3: This code takes the top 100 most popular movies and then counts how many times different genres appear in that list. Showing which genres, and groupings of genres, are in the top 100 most popular movies.

SELECT genre, COUNT(genre) FROM 

(SELECT TOP 100 title, genre, popularity 

FROM [EC_IT143_DA].[dbo].[Movies] ORDER BY popularity DESC) AS top100

GROUP BY genre ORDER BY COUNT(genre) DESC






-- Q4:(Student question by Justin Hemmert) I really like horror and am curious what is the most popular horror movie of all time?
-- A4: This scrip finds the most popular move that has the tag "horro" in the genre

SELECT TOP 1 title, genre, popularity 

FROM [EC_IT143_DA].[dbo].[Movies] 

WHERE genre LIKE '%Horror%'

ORDER BY popularity DESC





