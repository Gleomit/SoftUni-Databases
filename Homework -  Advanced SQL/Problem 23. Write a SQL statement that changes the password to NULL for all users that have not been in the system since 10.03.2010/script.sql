UPDATE Users
SET Password = NULL
WHERE LastLogin < CONVERT(DATETIME, '10.03.2010', 104)