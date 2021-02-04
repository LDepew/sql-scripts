/*
select *
	from orders
	where date >= '2018-01-01 00:00:00.000' 
	and date <= '2018-12-31 23:59:59.000';
	*/
declare @lowdate datetime = '2017-10-01 00:00:00.000';
declare @highdate datetime = '2017-12-31 23:59:59.000';

select *
	from orders
	where date >= @lowdate
	and date <= @highdate