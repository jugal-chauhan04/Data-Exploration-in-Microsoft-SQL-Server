--At the end of the month, salespeople are likely to try
--much harder to get orders, to meet their month-end
--quotas. Show all orders made on the last day of the
--month. Order by EmployeeID and OrderID

SELECT
	EmployeeID,
	OrderID,
	OrderDate
FROM
	Northwind.dbo.Orders
WHERE
	OrderDate LIKE '%30%' OR
	OrderDate LIKE '%31%' OR
	OrderDate LIKE '%28%'
ORDER BY
	EmployeeID, OrderID
