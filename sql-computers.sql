create database computers;

create table machines (
    id int not null primary key auto_increment,
    year varchar(30) not null,
    brand varchar(30) not null,
    model varchar(30) not null
	);
    
     insert machines
    (year, brand, model)
    values
    ('2006', 'Dell', 'XPS 410'),
    ('2006', 'IBM', 'Thinkcentre M52'),
    ('2004', 'Custom', 'Pentium 4'),
    ('1995', 'Dell', 'Dimension XPS P166c'),
    ('1999', 'Dell', 'Dimension XPS T500'),
    ('1995', 'Packard Bell', 'Legend 409CDT');

    
    select * from machines;
    
   
    
    create table Specs(
    id int not null primary key auto_increment,
    CPU varchar(30) not null,
    GPU varchar(30) not null,
    Memory varchar(30) not null,
    Sound varchar(30) not null,
    Optical varchar(30) not null,
    FLoppy varchar(30) not null,
    ownerid int,
    foreign key (id) references machines (id)
    );
    
    select * from Specs;
    
    insert Specs
    (CPU, GPU, Memory, Sound, Optical, Floppy)
    Values
	('Core 2 Duo E6600', 'Geforce 7600', '1 Gb', 'Built-in', '2 DVD Drives', 'No'),
    ('Celeron D 331', 'Built-in', '1 Gb', 'Built-in', 'DVD Drive', 'No'),
    ('Pentium 4 3.0E', 'Geforce 5600', '1 Gb', 'Maddog PCI', 'CD Writer', '3 1/2 floppy'),
    ('Pentium 150', 'Riva 128', '140 Mb', 'Sound Blaster 16', 'CD Rom', '3 1/2, 5 1/4 floppy'),
    ('Pentium 3 500', 'Voodoo 3 3000', '348 Mb', 'Sound Blaster 64', 'CD Rom', '3 1/2 floppy'),
    ('Pentium 100', 'ATI All-In-Wonder', '128 Mb', 'ESS Audiodrive', 'CD Rom', '3 1/2 floppy');
    
select * from machines m
join specs s on s.ownerid = m.id;

insert specs
(ownerid)
Values
((select id from machines where model = 'XPS 410'));