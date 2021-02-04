SELECT *
	from Class c
	join Majorclass mc on mc.ClassId = c.Id
	join Studentclass sc on sc.ClassId = c.Id
	where MajorId like 1