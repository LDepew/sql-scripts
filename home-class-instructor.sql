SELECT *
	from class c
	join Instructor i on i.Id = c.InstructorId
	join StudentClass sc on sc.ClassId = c.InstructorId
	where section <= 203;