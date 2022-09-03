--11. One employee (Margaret Peacock, EmployeeID 4)
--has placed the most orders. However, there are some
--customers who've never placed an order with her.
--Show only those customers who have never placed
--an order with her

SELECT 
	customers.CustomerID,
	orders.CustomerID
FROM Northwind.dbo.Customers AS customers
LEFT JOIN Northwind.dbo.Orders AS orders
ON 
	customers.CustomerID = orders.CustomerID and orders.EmployeeID = 4
WHERE
	orders.CustomerID IS NULL