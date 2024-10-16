-- names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists
SELECT 
	DISTINCT artists.Name
FROM 
	artists
JOIN
	albums ON artists.ArtistId = albums.ArtistId
JOIN 
	tracks ON tracks.AlbumId = albums.AlbumId
JOIN
	playlist_track ON playlist_track.TrackId = tracks.TrackId
JOIN
	playlists ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN
	media_types ON tracks.MediaTypeId = media_types.MediaTypeId
WHERE	
	media_types.Name LIKE "%MPEG%" AND playlists.name IN ("Brazilian Music","Grunge")
ORDER BY artists.Name, tracks.Name;
	