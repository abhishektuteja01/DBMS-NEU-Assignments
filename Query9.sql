--Query to decide which employee brings in the most amount of returns based on Invoice, Employee and Customer Data
SELECT
	EmployeeName, rank() OVER (ORDER BY EmployeeReturns) AssetRank, EmployeeReturns
FROM
(SELECT
	CONCAT(employees.FirstName," ",employees.LastName) as EmployeeName, 
	SUM(invoices.total) AS EmployeeReturns
FROM
	employees
JOIN 
	customers ON customers.SupportRepId = employees.EmployeeId
JOIN	
	invoices ON invoices.CustomerId = customers.CustomerId
GROUP BY EmployeeName
)