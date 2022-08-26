--In the Customers table, show the total number of
--customers per Country and City

SELECT
	Country,
	City,
	no_customers = COUNT(CustomerID)
FROM
	Northwind.dbo.Customers
GROUP BY
	Country,
	City
ORDER BY
	no_customers DESC	
	
