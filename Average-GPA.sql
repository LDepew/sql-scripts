-- Average GPA for all students, using having 

select m.description as 'Major', avg(gpa)
	from Student s
	join Major m on m.Id = s.MajorId
	/* where s.Statecode <> 'Oh' */
	group by m.Description
	having avg(gpa) >= 3.0;