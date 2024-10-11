-- Q: Is there more data for males or females?

-- A: Let's ask SQL Server and find out...

SELECT v.column10
	INTO dbo.adult_data
	FROM dbo.v_adult_data_load AS v;