-- names of the artists who made an album containing the substring "symphony" in the album title
SELECT 
	albums.Title, artists.Name
FROM
	albums 
JOIN
	artists ON albums.ArtistId = artists.ArtistId
WHERE 
	albums.Title LIKE "%symphony%"
ORDER BY albums.Title, artists.Name