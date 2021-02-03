Select *
	from Class c
	join MajorClass mc on mc.ClassId = c.Id
	join Major m on m.Id = mc.MajorId
	where c.Code = 'MAT203'
	order by c.Code