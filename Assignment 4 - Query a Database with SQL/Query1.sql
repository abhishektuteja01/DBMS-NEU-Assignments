-- last names and emails of all customer who made purchased in the store

SELECT DISTINCT LastName, Email
FROM 
	customers 
JOIN
	invoices ON invoices.CustomerId = customers.CustomerId
