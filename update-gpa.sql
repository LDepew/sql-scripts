Update student set
gpa = gpa * 1.1
where id > 0;

Select lastname, gpa, gpa * 1.1
from student;