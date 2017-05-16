--Assigns events and their sponsors randomly
CREATE PROCEDURE sp_randomeventsponsor
@X INT = 1
AS
  BEGIN
    BEGIN TRY
    WHILE @X < 25
    INSERT INTO EventSponsor(eventID, sponsorID)
    VALUES (floor(rand() * (8 - 1 + 1)) + 1, floor(rand() * (15 - 1 + 1)) + 1)
    SET @X += 1
    END TRY
    BEGIN CATCH
    PRINT ('Could Not assign random events to random sponsors.')
    END CATCH
END
  GO