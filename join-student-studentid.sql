select s.Firstname, s.Lastname, c.Subject, c.Section
	from Student s
	join StudentClass sc on sc.studentid = s.Id
	join class c on c.id = sc.ClassId
	where s.firstname = 'Brian'