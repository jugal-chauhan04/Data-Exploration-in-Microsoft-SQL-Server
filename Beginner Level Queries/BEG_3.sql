--Show a list of countries where the Northwind
--company has customers


SELECT
	Country
FROM
	Northwind.dbo.Customers
GROUP BY
	Country