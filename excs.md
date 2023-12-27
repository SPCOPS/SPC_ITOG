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
