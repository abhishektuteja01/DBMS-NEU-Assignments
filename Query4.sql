--  states having more than 10 unique customers
SELECT *
FROM 
(
	SELECT
		State, COUNT(CustomerId) AS NumberofCust
	FROM
		customers
	GROUP BY State
)
WHERE 
	NumberofCust > 10
ORDER BY State