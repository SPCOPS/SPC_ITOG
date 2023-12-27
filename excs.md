**Задание 1.**
Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными (заполнив файл Лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).
<image src="/screens/screen1.jpg" alt="Linux">

**Задание 2.**
Создать директорию, переместить файл туда.
<image src="/screens/screen2.jpg" alt="Linux">

**Задание 3.**
Подключить дополнительный репозиторий MySQL. Установить любой пакет
из этого репозитория.
<image src="/screens/screen3.jpg" alt="Linux">
<image src="/screens/screen3_1.jpg" alt="Linux">
<image src="/screens/screen3_2.jpg" alt="Linux">
<image src="/screens/screen3_3.jpg" alt="Linux">
<image src="/screens/screen3_4.jpg" alt="Linux">
<image src="/screens/screen3_5.jpg" alt="Linux">

**Задание 4.**
Установить и удалить deb-пакет с помощью dpkg
<image src="/screens/screen4.jpg" alt="Linux">
<image src="/screens/screen4_1.jpg" alt="Linux">

**Задание 5.**
№1
mkdir spcops
cd ~/spcops
cat > pets
cat > packan
cat pets packan > animals
cat animals
mv animals pets_friends
ls -ali

№2
mkdir spcops2
cd ~/spcops2
mv pets_friends ~/spcops2
cd ~/spcops
mv pets_friends ~/spcops2
cd ~/spcops2
ls -ali

№3
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.23-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.23-1_all.deb
sudo apt-get update
sudo apt-get install mysql-server

№4
apt search vim
sudo apt-get install apvlv
sudo dpkg -r apvlv

**Задание 6.**
Нарисовать диаграмму, в которой есть класс родительский класс, домашние
животные и вьючные животные, в составы которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные
войдут: лошади, верблюды и ослы.
<image src="/exc6.png" alt="Drawio">

**Задание 7.**
В подключенном MySQL репозитории создать базу данных “Друзья
человека”

`CREATE DATABASE Pets_friends;`

**Задание 8.**
Создать таблицы с иерархией из диаграммы в БД

```
USE Pets_friends;
CREATE TABLE anclass
(
	Id INT AUTO_INCREMENT PRIMARY KEY, 
	Class VARCHAR(20)
);
INSERT INTO anclass (Class)
VALUES ('Вьючные'),
('Домашние');  
CREATE TABLE packan
(
	  Id INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR (20),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES anclass (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO packan (Type, ClassID)
VALUES ('Лошади', 1),
('Ослы', 1),  
('Верблюды', 1);  
CREATE TABLE pets
(
	  Id INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR (20),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES anclass (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO pets (Type, ClassID)
VALUES ('Кошки', 2),
('Собаки', 2),  
('Хомяки', 2);
```

**Задание 9.**
Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения

```
CREATE TABLE meows 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID) REFERENCES pets (Id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO meows (Name, Birthday, Decrees, TypeID)
VALUES ('Мурка', '2023-04-03', 'Кушать', 1),
('Снежок', '2020-04-20', 'Лапу!', 1),  
('Рыжик', '2012-08-08', 'Скажи мяу', 1); 

CREATE TABLE woofs 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID) REFERENCES pets (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO woofs (Name, Birthday, Decrees, TypeID)
VALUES ('Барон', '2003-04-27', 'Голос!', 2),
('Рекс', '2011-05-18', "Сидеть!", 2),  
('Рык', '2005-02-23', "Лежать!", 2);

CREATE TABLE hams
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID) REFERENCES pets (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO hams (Name, Birthday, Decrees, TypeID)
VALUES ('Буся', '2020-05-09', 'Колесо', 3),
('Сеня', '2020-05-10', 'Прячься!', 3),  
('Тиса', '2021-02-11', 'Гулять', 3); 

CREATE TABLE hoss
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID REFERENCES packan (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO hoss (Name, Birthday, Decrees, TypeID)
VALUES ('Искорка', '2021-03-08', 'Галоп', 1),
('Молния', '2014-08-25', "Стоп!", 1),  
('Пуля', '2017-06-04', "Домой", 1);

CREATE TABLE Donkeys
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID) REFERENCES packan (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO Donkeys (Name, Birthday, Decrees, TypeID)
VALUES ('Толик', '1999-08-09', 'Пить', 2),
('Русик', '2000-09-09', 'Спать', 2),  
('Худич', '1998-06-15', 'Молчать', 2);


CREATE TABLE Camels 
(       
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20), 
    Birthday DATE,
    Decrees VARCHAR(50),
    TypeID int,
    Foreign KEY (TypeID) REFERENCES packan (Id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO Camels (Name, Birthday, Decrees, TypeID)
VALUES ('Холмик', '2001-07-14', 'Вези', 3),
('Плевун', '2002-02-10', 'Фото', 3),  
('Рыжий', '2006-07-12', 'Кактус!', 3);
```

**Задание 10.**
Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.

```
SET SQL_SAFE_UPDATES = 0;
DELETE FROM camels;

SELECT Name, Birthday, Decrees FROM hoss
UNION SELECT  Name, Birthday, Decrees FROM donkeys;
```

**Задание 11.**
Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице.

```
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
```

**Задание 12.**
Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
прошлую принадлежность к старым таблицам.

```
SELECT h.Name, h.Birthday, h.Decrees, p.TypeID, a.AgeMonth 
FROM hoss h
LEFT JOIN animkids a ON a.Name = h.Name
LEFT JOIN packan p ON p.Id = h.TypeID
UNION 
SELECT d.Name, d.Birthday, d.Decrees, p.TypeID, a.AgeMonth 
FROM donkeys d 
LEFT JOIN animkids a ON a.Name = d.Name
LEFT JOIN packan p ON p.Id = d.TypeID
UNION
SELECT c.Name, c.Birthday, c.Decrees, pt.TypeID, a.AgeMonth  
FROM meows c
LEFT JOIN animkids a ON a.Name = c.Name
LEFT JOIN pets pt ON pt.Id = c.TypeID
UNION
SELECT d.Name, d.Birthday, d.Commands, pt.TypeID, a.AgeMonth h 
FROM woofs d
LEFT JOIN animkids a ON a.Name = d.Name
LEFT JOIN pets pt ON pt.Id = d.TypeID
UNION
SELECT hm.Name, hm.Birthday, hm.Commands, pt.TypeID, a.AgeMonth  
FROM hams hm
LEFT JOIN animkids a ON a.Name = hm.Name
LEFT JOIN pets pt ON pt.Id = hm.TupeID;
```