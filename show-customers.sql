-- show customers sales greater than 50,000
/*
This is also a comment
*/
SELECT *
	from Customers
	where sales > (select avg(sales) from customer
	s);