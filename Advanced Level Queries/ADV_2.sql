--The manager has changed his mind. Instead of
--requiring that customers have at least one individual
--orders totaling $10,000 or more, he wants to define
--high-value customers as those who have orders
--totaling $15,000 or more in 1997.

SELECT
	customers.CustomerID,
	customers.CompanyName,
	Total = SUM(order_details.UnitPrice * order_details.Quantity)

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
	SUM(order_details.UnitPrice * order_details.Quantity)> 15000

ORDER BY
	Total DESC