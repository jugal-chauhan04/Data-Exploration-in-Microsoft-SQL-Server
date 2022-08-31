--We're continuing on the question above on high
--freight charges. Now, instead of using all the orders
--we have, we only want to see orders from the year
--1997

SELECT TOP 3
	ShipCountry,
	AVG(Freight) AS average_frieght
FROM
	Northwind.dbo.Orders
WHERE
	year(OrderDate) = 1997
GROUP BY
	ShipCountry
ORDER BY
	average_frieght DESC