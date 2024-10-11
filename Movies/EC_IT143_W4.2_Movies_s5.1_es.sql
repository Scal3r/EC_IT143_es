-- Q: Is there more data for males or females?

-- A: Let's ask SQL Server and find out...

SELECT v.popularity
	INTO [EC_IT143_DA].[dbo].[Movies]
	FROM dbo.v_top10k_TMDB_movies_load AS v;