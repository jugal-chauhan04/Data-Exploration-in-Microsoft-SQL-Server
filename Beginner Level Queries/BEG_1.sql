--In the OrderDetails table, we have the fields
--UnitPrice and Quantity. Create a new field,
--TotalPrice, that multiplies these two together. We’ll
--ignore the Discount field for now.
--In addition, show the OrderID, ProductID, UnitPrice,
--and Quantity. Order by OrderID and ProductID.

SELECT
	OrderID,
	ProductID,
	UnitPrice,
	Quantity,
	(UnitPrice * Quantity) AS TotalPrice  --creating a new field TotalPrice using * operator
FROM
	Northwind.dbo.[Order Details]
ORDER BY
	OrderID,
	ProductID
	
![2022-08-15](https://user-images.githubusercontent.com/111266884/184585650-34a6deb5-01c3-4386-8e81-4cfd4c23d92d.png)
	
