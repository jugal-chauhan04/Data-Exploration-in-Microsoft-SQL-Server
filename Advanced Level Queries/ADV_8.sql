--Show the percentage of Late Orders over Total Orders.

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
	Lateorders = LateOrders.TotalOrders,
	PercentLateOrder = CAST(ROUND((LateOrders.TotalOrders*1.00/AllOrders.TotalOrders)*100, 2) as float)

FROM Employees
JOIN AllOrders
ON Employees.EmployeeID = AllOrders.EmployeeID
JOIN LateOrders
ON Employees.EmployeeID = LateOrders.EmployeeID
