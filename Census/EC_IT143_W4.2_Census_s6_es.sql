-- Q: What is the current date and time?

--A: Let's ask SQL Server and find out...

-- 1)Reload data

TRUNCATE TABLE dbo.adult_data;

INSERT INTO dbo.adult_data
			SELECT v.column10
					FROM dbo.v_adult_data_load AS v;

-- 2) Review results

SELECT t.*
	From dbo.adult_data AS t;