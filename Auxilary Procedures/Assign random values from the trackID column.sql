--Assign random values from the trackID column to a new table
DECLARE @X  INT = 1
WHILE @X < 155
  BEGIN
    INSERT INTO temp(track)
    values(floor(rand() * (26 - 19 + 1)) + 19)
    SET @X += 1
  END
--copy the column to presentation table for trackID attribute
UPDATE Presentation
SET trackID = (SELECT track FROM temp WHERE Presentation.ID = temp.ID)