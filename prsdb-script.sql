use sys;

drop database if exists prsdb;

create database prsdb;

use prsdb;

create table users (
id int not null primary key auto_increment,
username varchar(30) not null unique,
password varchar(30) not null,
firstname varchar(30) not null,
lastname varchar(30) not null,
phone varchar(15),
email varchar(255),
 isReviewer tinyint not null default 0,
 isAdmin tinyint not null default 0
);

insert users
(username, password, firstname, lastname, isReviewer, isAdmin)
values
('sa', 'sa', 'System', 'Admin', 1,  1);

use prsdb;

select * from users;

Create table Vendors (
id int not null primary key auto_increment,
code varchar(10) not null unique,
name varchar(30) not null,
address varchar(30) not null,
city varchar(30) not null,
state varchar(2) not null,
zip varchar(5) not null,
phoneNumber varchar(12),
email varchar(255)
);

insert vendors
(code, name, address, city, state, zip)
values
('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '84744'),
('TARG', 'Target', '1 Target Way', 'Minneapolis', 'MN', '47464'),
('Meij', 'Meijer', '1 Meijer Way', 'Atlanta', 'MI', '87532');

select * from vendors;

create table Requests (
id int not null primary key auto_increment,
description varchar(80) not null,
justification varchar(80) not null,
rejectionReason varchar (80),
deliveryMode varchar(20) not null default 'Pickup',
status varchar(10) not null default 'NEW',
total decimal(11,2) not null default '0',
dateNeeded date not null,
submittedDate datetime not null default current_timestamp,
userid int not null,
	foreign key (userid) references users(id)
);

insert requests
(description, justification, dateNeeded, userId)
values
('1st request', 'Just because', '2021-03-01', (select id from users where username = 'sa') );

create table Products (
id int not null primary key auto_increment,
partNumber varchar(30) not null unique,
name varchar(30) not null,
price decimal(11,2) not null,
unit varchar(30) not null,
photoPath varchar(255),
vendorid int not null,
foreign key (vendorId) references Vendors(id)
);

insert products
(partNumber, name, price, unit, vendorId)
values
('BPPEN', 'Ballpoint Pen', '1.25', 'Each', (select id from vendors where name = 'Amazon') ),
('INFPl', 'Inflatable Pool', '28.93', 'Each', (select id from vendors where name = 'Meijer') ),
('CHVNIR', 'Chevelle Niratias', '12.83', 'Each', (select id from vendors where name = 'Target') ),
('KITTOY', 'Purple Cat Toy', '4.27', 'Each', (select id from vendors where name = 'Meijer') ),
('AVPZL', 'Avengers Puzzle', '14.28', 'Each', (select id from vendors where name = 'Amazon') );

create table Lineitems (
id int not null primary key auto_increment,
requestId int not null,
productId int not null,
quantity int not null default 1,
foreign key (requestId) references Requests(id),
foreign key (productId) references Products(id),
constraint requestId_productId unique (requestId, productId)
);

insert Lineitems
(requestId, productId, quantity)
values
( (select id from requests where id =1), (select id from products where partNumber = 'BPPEN'), 3),
( (select id from requests where id = 1), (select id from products where partNumber = 'CHVNIR'), 2);