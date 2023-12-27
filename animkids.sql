CREATE TEMPORARY TABLE beasts AS 
SELECT *, 'Лошади' AS TypeID FROM hoss
UNION SELECT *, 'Ослы' AS TypeID FROM donkeys
UNION SELECT *, 'Собаки' AS TypeID FROM woofs
UNION SELECT *, 'Кошки' AS TypeID FROM meows
UNION SELECT *, 'Хомяки' AS TypeID FROM hams;

CREATE TABLE animkids AS
SELECT Name, Birthday, Decrees, TypeID, TIMESTAMPDIFF(MONTH, Birthday, CURDATE()) AS AgeMonth
FROM beasts WHERE Birthday BETWEEN ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);
 
SELECT * FROM animkids;