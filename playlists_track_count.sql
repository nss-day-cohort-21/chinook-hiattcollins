SELECT
  COUNT (PlaylistTrack.TrackId),
  PlaylistTrack.PlaylistId,
  Playlist.Name
FROM PlaylistTrack
  LEFT JOIN Playlist ON PlaylistTrack.PlaylistId == Playlist.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
