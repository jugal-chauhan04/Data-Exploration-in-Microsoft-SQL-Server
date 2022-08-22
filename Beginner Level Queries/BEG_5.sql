--We’d like to show, for each product, the associated
--Supplier. Show the ProductID, ProductName, and the
--CompanyName of the Supplier. Sort by ProductID.

SELECT
	ProductID,
	ProductName,
	CompanyName

FROM
	Northwind.dbo.Products AS products
JOIN
	Northwind.dbo.Suppliers AS suppliers
ON
	products.SupplierID = suppliers.SupplierID
ORDER BY
	ProductID