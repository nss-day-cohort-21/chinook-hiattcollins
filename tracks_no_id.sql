SELECT
  Track.Name,
  Album.Title,
  MediaType.Name,
  Genre.Name
FROM
  Track
  LEFT JOIN Album ON Track.AlbumId == Album.AlbumId
  LEFT JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
  LEFT JOIN Genre ON Track.GenreId == Genre.GenreId
