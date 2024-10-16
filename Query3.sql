-- total number of unique customers for each state, ordered alphabetically by state
SELECT
	State, COUNT(CustomerId)
FROM 
	customers
GROUP BY State
ORDER BY State