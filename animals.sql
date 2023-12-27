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
('Тиса', '2021-02-11', 'Гулять', 3), 

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
('Пуля', '2017-06-04', "Домой", 1), 

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
('Худич', '1998-06-15', 'Молчать', 2), 


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
('Рыжий', '2006-07-12', 'Кактус!', 3), 