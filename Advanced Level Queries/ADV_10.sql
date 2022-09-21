--Some Northwind employees are planning a business
--trip, and would like to visit as many suppliers and
--customers as possible. For their planning, they’d like
--to see a list of all countries where suppliers and/or
--customers are based.

SELECT Country FROM Suppliers

UNION

SELECT Country FROM Customers

ORDER BY
	Country 