--Change the above query to use the discount when
--calculating high-value customers. Order by the total
--amount which includes the discount

SELECT
	customers.CustomerID,
	customers.CompanyName,
	Total_with_discount = SUM(order_details.UnitPrice * order_details.Quantity * (1-order_details.Discount)),
	Total_without_discount =  SUM(order_details.UnitPrice * order_details.Quantity)

FROM Northwind.dbo.Customers AS customers

JOIN Northwind.dbo.Orders AS orders
	ON customers.CustomerID = orders.CustomerID
JOIN Northwind.dbo.[Order Details] AS order_details
	ON orders.OrderID = order_details.OrderID 

WHERE
	orders.OrderDate >= '19970101'
	and orders.OrderDate < '19980101'

GROUP BY
	customers.CustomerID,
	customers.CompanyName

HAVING 
	SUM(order_details.UnitPrice * order_details.Quantity * (1-order_details.Discount)) > 10000

ORDER BY
	Total_with_discount DESC