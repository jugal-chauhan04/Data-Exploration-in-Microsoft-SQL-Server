--Some of the countries we ship to have very high
--freight charges. We'd like to investigate some more
--shipping options for our customers, to be able to
--offer them lower freight charges. Return the three
--ship countries with the highest average freight
--overall, in descending order by average freight

SELECT TOP 3
	ShipCountry,
	AVG(Freight) AS average_frieght
FROM
	Northwind.dbo.Orders
GROUP BY
	ShipCountry
ORDER BY
	average_frieght DESC