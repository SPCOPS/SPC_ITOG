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