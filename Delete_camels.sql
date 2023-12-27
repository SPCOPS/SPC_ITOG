SET SQL_SAFE_UPDATES = 0;
DELETE FROM camels;

SELECT Name, Birthday, Decrees FROM hoss
UNION SELECT  Name, Birthday, Decrees FROM donkeys;