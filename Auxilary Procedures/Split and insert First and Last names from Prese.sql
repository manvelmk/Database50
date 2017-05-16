--Split and insert First and Last names from Presentations to People
INSERT INTO Person(firstName, lastName)
SELECT
  SUBSTRING(speaker, 1, CHARINDEX(' ', speaker) - 1) AS firstName,
  REVERSE(SUBSTRING(REVERSE(speaker), 1, CHARINDEX(' ', REVERSE(speaker)) - 1)) AS lastName
FROM
  [Presentation]