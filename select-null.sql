SELECT *
	from Customers c
	left Join Orders o on O.CustomerID = c.Id
	left join orderlines ol on ol.OrdersID = o.ID
	order by CustomerId

	