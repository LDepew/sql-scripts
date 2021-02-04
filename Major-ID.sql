SELECT s. id, Lastname, Description
	from Student s
	left join Major m on s.Majorid = m.ID
	Where s.Id <= 10;
