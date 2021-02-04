Select city, count(*) as 'Nbr of Customers', sum(sales) as 'Sales',
	avg(sales) as 'Average Sales'
	from Customers
	group by city
