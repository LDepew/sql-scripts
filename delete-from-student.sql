SELECT * FROM student;

INSERT Student
(Firstname, Lastname, SAT, GPA, MajorId)
VALUES
('John', 'Deacon', 1280, 2.9, 5);

delete from student
	where id in (
    select id from student
    where gpa = 2.90
    And lastname = 'Deacon'
    And firstname = 'John');
