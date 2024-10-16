-- artists published at least 10 MPEG tracks
SELECT COUNT(*) Answer
FROM 
(
SELECT 
	artists.Name, COUNT(*) cn
FROM 
	artists
JOIN
	albums ON artists.ArtistId = albums.ArtistId
JOIN 
	tracks ON tracks.AlbumId = albums.AlbumId
JOIN
	media_types ON tracks.MediaTypeId = media_types.MediaTypeId
WHERE	
	media_types.Name LIKE "%MPEG%"
GROUP BY artists.Name HAVING cn>9
)