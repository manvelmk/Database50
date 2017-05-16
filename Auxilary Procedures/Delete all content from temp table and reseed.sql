--Delete all content from temp table and reseed the identity
DELETE FROM temp
DBCC CHECKIDENT ('[temp]', RESEED, 0);
GO