Select *
	from MajorClass mc
	join Class c on mc.ClassId = c.Id
	join Major m on mc.MajorId = m.ID
	where ClassId <= 18
