Select * from user;

INSERT user
(name, address, city, state, zipcode, email, phone, role)
VALUES
('Bob Dole', '395 cherry lane', 'Tround', 'WI', '53003', 'bobdole@banana.com', '839-298-2019', 'janitor');

select * from vehicle;

INSERT vehicle
(year, model, make, vin, trim, ownerId)
values
('2004', 'Tacoma', 'Toyota', '492745', 'Pr', (select id from user where name = 'Bob Dole')),
('2015', 'Dakota', 'Dodge', '290474', 'Bx', null);

SELECT v.*, u.name
	from vehicle v 
    left join user u on v.ownerid = u.id;
    
update vehicle set ownerid = 999 where id = 2;