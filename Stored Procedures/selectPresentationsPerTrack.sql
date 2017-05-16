CREATE PROC sp_presentationsPerTrack
  @name VARCHAR(255)
AS
  BEGIN TRY
  SELECT event, Track.name as track, title as presentation, level From Presentation
    INNER JOIN Track ON Presentation.trackID = Track.ID
  WHERE event = 'Budapest' AND name = @name
  END TRY
  BEGIN CATCH
      ROLLBACK TRANSACTION;

    DECLARE @ErrorNumber INT = ERROR_NUMBER();
    DECLARE @ErrorLine INT = ERROR_LINE();
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Actual error number: ' + CAST(@ErrorNumber AS VARCHAR(10));
    PRINT 'Actual line number: ' + CAST(@ErrorLine AS VARCHAR(10));

    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
  END CATCH
go

