--For this problem, we’d like to see the total number of
--products in each category. Sort the results by the total
--number of products, in descending order

SELECT
	category.CategoryName,
	COUNT(ProductID) AS number_of_products
FROM
	Northwind.dbo.Categories AS category
JOIN
	Northwind.dbo.Products AS products
ON
	category.CategoryID = products.CategoryID
GROUP BY
	CategoryName
ORDER BY
	number_of_products DESC

