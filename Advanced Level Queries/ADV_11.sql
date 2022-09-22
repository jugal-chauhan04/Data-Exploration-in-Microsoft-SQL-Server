--The output of the above is improved, but it’s still not
--ideal
--What we’d really like to see is the country name, the
--total suppliers, and the total customers

WITH SupplierTotal AS
(
SELECT
	Country,
	COUNT(Country) AS Total
FROM Suppliers
GROUP BY
	Country
),
CustomerTotal AS
(
SELECT 
	Country,
	COUNT(Country) AS Total
FROM Customers
GROUP BY
	Country
)


SELECT
	Country = ISNULL(SupplierTotal.Country, CustomerTotal.Country),
	TotalSuppliers = ISNULL(SupplierTotal.Total, 0),
	TotalCustomers = ISNULL(CustomerTotal.Total, 0)
	

FROM SupplierTotal
FULL OUTER JOIN CustomerTotal
ON SupplierTotal.Country = CustomerTotal.Country
	

	
