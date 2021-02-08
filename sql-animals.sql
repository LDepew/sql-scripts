create database animals;

create table pets (
id int not null primary key auto_increment,
name varchar(30) not null,
age varchar(2) not null,
breed varchar(30) not null);

insert pets
(name, age, breed)
values
('Millie', '12', 'Fluffy Cat'),
('Hot Dog', '14', 'Moody Cat'),
('Kitty Hawk', '1', 'Kitty'),
('Whisper', '15', 'Dalmation'),
('Misty', '13', 'Shelty'),
('Salty', '12', 'White Cat'),
('Pepper', '11', 'Black Cat'),
('Velvet', '4', 'Rabbit'),
('Houdini', '3', 'Hamster');

select * from pets;