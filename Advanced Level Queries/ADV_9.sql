--Andrew Fuller, the VP of sales at Northwind, would
--like to do a sales campaign for existing customers.
--He'd like to categorize customers into groups, based
--on how much they ordered in 2016. Then, depending
--on which group the customer is in, he will target the
--customer with different sales materials.
--The customer grouping categories are 0 to 1,000,
--1,000 to 5,000, 5,000 to 10,000, and over 10,000.SELECT
	customers.CustomerID,
	customers.CompanyName,
	TotalOrderAmount = SUM(order_details.UnitPrice * order_details.Quantity),
	CASE
		WHEN SUM(order_details.UnitPrice * order_details.Quantity) > 10000 THEN 'Very High'
		WHEN SUM(order_details.UnitPrice * order_details.Quantity) BETWEEN 5000 AND 10000 THEN 'High'
		WHEN SUM(order_details.UnitPrice * order_details.Quantity) BETWEEN 1000 AND 5000 THEN 'Medium'
		ELSE 'Low'
	END AS Category

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

ORDER BY
	TotalOrderAmount DESC




