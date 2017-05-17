CREATE PROCEDURE sp_speakerPresentation
  @speaker VARCHAR(255)
  AS
SELECT DISTINCT
title, level, event, firstName +' ' + lastName as Speaker
FROM
Presentation
INNER JOIN Person ON Presentation.speakerID = Person.ID
WHERE Person.firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND Person.lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1))
go

EXEC sp_speakerPresentation 'Andy Leonard'