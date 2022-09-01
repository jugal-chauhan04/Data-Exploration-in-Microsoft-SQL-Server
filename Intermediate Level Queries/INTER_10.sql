--10. There are some customers who have never actually
--placed an order. Show these customers

SELECT
	customer.CustomerID,
	customer.CompanyName,
	customer.ContactName,
	orders.OrderID
FROM Northwind.dbo.Customers AS customer
LEFT JOIN Northwind.dbo.Orders AS orders
	ON customer.CustomerID = orders.CustomerID
WHERE 
	orders.OrderID IS NULL
