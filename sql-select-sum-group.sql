SELECT c.id, c.name, sum(ol.quantity * ol.price) as "total"
	from Customers c 
    join orders o on o.customerid = c.id
    join orderlines ol on ol.ordersid = o.id
    group by c.name, c.id
    having sum(ol.quantity * ol.price) between 500 And 1000
    order by c.name;

SELECT *
	from Customers
    where sales > (select avg(sales) from customers)
    order by sales desc;

/*        
SELECT avg(sales)
	from Customers c;
    
select * from customers;
select * from orders;
select * from orderlines;
*/