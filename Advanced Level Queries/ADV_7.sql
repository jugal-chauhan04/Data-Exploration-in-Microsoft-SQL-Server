--Andrew, the VP of sales, has been doing some more
--thinking some more about the problem of late orders.
--He realizes that just looking at the number of orders
--arriving late for each salesperson isn't a good idea. It
--needs to be compared against the total number of
--orders per salesperson. Return results like the
--following:

WITH AllOrders AS
(SELECT
	 EmployeeID, COUNT(*) AS TotalOrders
FROM
	Orders
GROUP BY
	EmployeeID
),
LateOrders AS
(SELECT
	 EmployeeID, COUNT(*) AS TotalOrders
FROM
	Orders
WHERE
	RequiredDate < ShippedDate
GROUP BY
	EmployeeID
)
	

SELECT
	Employees.EmployeeID,
	Employees.LastName,
	Allorders = AllOrders.TotalOrders,
	Lateorders = LateOrders.TotalOrders

FROM Employees
JOIN AllOrders
ON Employees.EmployeeID = AllOrders.EmployeeID
JOIN LateOrders
ON Employees.EmployeeID = LateOrders.EmployeeID


