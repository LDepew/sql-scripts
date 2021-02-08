create table class (
id int not null primary key auto_increment,
subject varchar(30) not null,
minsat varchar(30)  not null,
teacher varchar(30)
);

create table teacher (
    id int not null primary key auto_increment,
    name varchar(30) not null,
    subject varchar(30) not null,
    yrs varchar(4) not null,
    ownerid int, 
    foreign key (ownerid) references class(id)
    );
    
insert teacher
(name, subject, yrs)
values
(' Bob Summeral', 'English', '12'),
('Jane Seymour', 'Botany', '16'),
('Pearl Johnson', 'Music', '23');

insert class
(subject, minsat, teacher)
values
('English', '1850', (select id from teacher where name = 'Bob Summeral')),
('Botany', '1100', (select id from teacher where name = 'Jane Seymour')),
('Music','850', (select id from teacher where name = 'Pearl Johnson'));

select * from class;
