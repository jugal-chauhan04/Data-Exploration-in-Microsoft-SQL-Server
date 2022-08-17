--How many customers do we have in the Customers
--table? Show one value only, and don’t rely on getting
--the recordcount at the end of a resultset

SELECT
	COUNT(*) AS No_Customers
FROM
	Northwind.dbo.Customers