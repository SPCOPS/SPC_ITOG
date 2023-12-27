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