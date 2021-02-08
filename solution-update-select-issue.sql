use eddb;
update student set
	firstname = 'name'
where id in (
    select * from (
		select id from student where lastname = 'name'
) as xx
);