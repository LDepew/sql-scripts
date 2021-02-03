select c.Subject, c.Section, CONCAT(i.Lastname, ', ', i.Firstname) as 'name', 
	i.YearsExperience, i.IsTenured
	from class c
	join Instructor i on i.id = c.InstructorId
	where i.YearsExperience > 9
	order by i.Lastname, c.Subject
