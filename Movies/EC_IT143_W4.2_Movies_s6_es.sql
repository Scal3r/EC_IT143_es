
-- Q: What is the highest popularity score?

-- A: Let's ask SQL Server and find out...


-- 1)Reload data

TRUNCATE TABLE dbo.Movies;

INSERT INTO dbo.Movies
			SELECT v.popularity
					FROM dbo.v_Movies_load AS v;

-- 2) Review results

SELECT t.*
	From dbo.Movies AS t;