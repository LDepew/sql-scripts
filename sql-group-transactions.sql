/*
select r.id, r.description, r.status, r.total, u.lastname, v.name as 'company',
p.name, p.price, li.quantity, p.price * li.quantity as 'line total'
from requests r
join users u on u.id = r.userId
join lineitems li on li.requestid = r.id
join products p on p.id = li.productid
join vendors v on v.id = p.vendorid;
*/

select r.description, sum(p.price * li.quantity) as 'Total'
from requests r
join users u on u.id = r.userId
join lineitems li on li.requestid = r.id
join products p on p.id = li.productid
join vendors v on v.id = p.vendorid
group by r.description;