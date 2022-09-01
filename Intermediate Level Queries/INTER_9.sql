--9. We're doing inventory, and need to show information
--like the below, for all orders. Sort by OrderID and
--Product ID
--EmployeeID, LastName, OrderID, ProductName, Quantity

SELECT
	employees.EmployeeID,
	employees.LastName,
	orders.OrderID,
	products.ProductName,
	order_details.Quantity
FROM Northwind.dbo.Employees AS employees
JOIN Northwind.dbo.Orders AS orders
	ON employees.EmployeeID = orders.EmployeeID
JOIN Northwind.dbo.[Order Details] AS order_details
	ON orders.OrderID = order_details.OrderID
JOIN Northwind.dbo.Products AS products
	ON order_details.ProductID = products.ProductID
ORDER BY
	orders.OrderID,
	products.ProductID