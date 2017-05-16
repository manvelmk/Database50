CREATE PROCEDURE sp_selectPresentation
  AS
SELECT DISTINCT
title, level, event, firstName +' ' + lastName as Speaker
FROM
Presentation
INNER JOIN Person ON Presentation.speakerID = Person.ID
    GO