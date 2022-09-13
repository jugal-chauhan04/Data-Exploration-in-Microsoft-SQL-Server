--Some salespeople have more orders arriving late than others.
--Maybe they're not following up on the order process, and need
--more training. Which salespeople have the most orders arriving late?

SELECT
	e.EmployeeID,e.LastName, COUNT(OrderID) AS LateOrders
FROM
	Orders o
JOIN
	Employees e
ON o.EmployeeID = e.EmployeeID

WHERE
	RequiredDate < ShippedDate
GROUP BY
	e.EmployeeID, e.LastName
ORDER BY
	COUNT(OrderID) DESC