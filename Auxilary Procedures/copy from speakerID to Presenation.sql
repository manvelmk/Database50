--Create temporary table to store values for speaker id
CREATE TABLE temp (ID INT NOT NULL PRIMARY KEY IDENTITY , speaker int)
INSERT into temp(speaker)
SELECT Person.ID FROM Person
WHERE ID > 100
--Copy values from temp table to the speakerID foreign key column of Presentation table
UPDATE Presentation
SET speakerID = (SELECT speaker FROM temp WHERE temp.id = Presentation.ID)
--Reset the foreign key constraint for the speakerID column
ALTER TABLE s17guest50.dbo.Presentation
ADD CONSTRAINT Presentation_Person_ID_fk
FOREIGN KEY (speakerID) REFERENCES Person (ID)