--We're continuing to work on high freight charges.
--We now want to get the three ship countries with the highest average freight charges.
--But instead of filtering for a particular year,
--we want to use the last 12 months of order data,
--using as the end date the last OrderDate in Orders.


SELECT TOP 3
	ShipCountry,
	AVG(Freight) AS average_frieght
FROM
	Northwind.dbo.Orders
WHERE
	OrderDate >= DATEADD(yy, -1, (SELECT MAX(OrderDate) FROM Northwind.dbo.Orders)) --The DATEADD function changes the specified date
	                                                                                --according to the interval and number. 
GROUP BY
	ShipCountry
ORDER BY
	average_frieght DESC