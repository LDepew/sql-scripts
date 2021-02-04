Select *
	from Major m
	join Student s on s.MajorId = m.ID
	join Majorclass mc on mc.MajorId = m.ID
	where GPA <= 2.5
