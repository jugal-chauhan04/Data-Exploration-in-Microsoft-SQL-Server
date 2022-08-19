--Show the date of the first order ever made in the
--Orders table

SELECT TOP 1
	OrderDate
FROM
	Northwind.dbo.Orders
ORDER BY
	OrderDate