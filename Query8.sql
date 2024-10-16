-- playlist id and name of only those playlists that are longer than 2 hours
SELECT	
	playlists.PlaylistId, ROUND(SUM(tracks.Milliseconds)/(1.0*3600000),2) Hours
FROM
	playlists
JOIN
	playlist_track ON playlist_track.PlaylistId = playlists.PlaylistId
JOIN
	tracks ON tracks.TrackId = playlist_track.TrackId
GROUP BY playlists.PlaylistId HAVING Hours > 2.0
