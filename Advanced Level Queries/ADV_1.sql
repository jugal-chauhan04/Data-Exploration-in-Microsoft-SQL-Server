--We want to send all of our high-value customers a
--special VIP gift. We're defining high-value
--customers as those who've made at least 1 order with
--a total value (not including the discount) equal to
--$10,000 or more. We only want to consider orders
--made in the year 1997

SELECT
	customers.CustomerID,
	customers.CompanyName,
	orders.OrderID,
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
	customers.CompanyName,
	orders.OrderID
HAVING 
	SUM(order_details.UnitPrice * order_details.Quantity)> 10000
ORDER BY
	Total DESC