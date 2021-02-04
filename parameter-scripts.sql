/*
Create scripts with a prameter for customer sales.
The query will display all customers with sales
less than the value of the parameter
*/

declare @custsaleslow decimal(9,2) = 20000
declare @custsaleshigh decimal(9,2) = 30000
select *
	from customers
	where Sales between @custsaleslow and @custsaleshigh