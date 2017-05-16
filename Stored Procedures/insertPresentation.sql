CREATE PROCEDURE insertPresentation
  @speaker  VARCHAR(90) = NULL  ,
  @pres_title VARCHAR(145) = NULL
  AS

  BEGIN
    --If given person is not in the Person table, add the person
    IF NOT EXISTS (SELECT firstName, lastName FROM Person
    WHERE firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1)))
      BEGIN
        INSERT INTO Person
          VALUES (SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1), REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1)))
        --If person and presentation do not exist add both
        IF NOT EXISTS (SELECT title FROM Presentation WHERE title = @pres_title)
       BEGIN
         INSERT INTO Presentation(title, speakerID)
           VALUES (@pres_title, (SELECT ID FROM Person
           WHERE firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1))))
         END
        END
      --Otherwise just add the speaker ID
      ELSE
        BEGIN
          UPDATE Presentation
        SET speakerID = (SELECT ID FROM Person
           WHERE firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1)))
      WHERE title = @pres_title
        END
    END
  --Now if the person does exist, check and add the presentation if not present
  IF NOT EXISTS (SELECT title FROM Presentation
     WHERE title = @pres_title)
       BEGIN
         INSERT INTO Presentation(title, speakerID)
           VALUES (@pres_title, (SELECT ID FROM Person
           WHERE firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1))))
         END
    ELSE BEGIN
      UPDATE Presentation
        SET speakerID = (SELECT ID FROM Person
           WHERE firstName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
          AND lastName = REVERSE(SUBSTRING(REVERSE(@speaker), 1, CHARINDEX(' ', REVERSE(@speaker)) - 1)))
      WHERE title = @pres_title
      END
go

