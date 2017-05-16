--Assigns roleID's to People already registered, randomly
DECLARE @Z INT = 1
WHILE @Z < 255
  BEGIN
    UPDATE PersonRole
    SET roleID = floor(rand() * (5 - 1 + 1)) + 1
    WHERE ID = @Z
    SET @Z += 1
  END