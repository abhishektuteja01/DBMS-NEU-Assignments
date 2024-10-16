-- names of each album and the artist who created it
SELECT 
	albums.Title, artists.Name
FROM
	albums 
JOIN
	artists ON albums.ArtistId = artists.ArtistId
ORDER BY albums.Title, artists.Name