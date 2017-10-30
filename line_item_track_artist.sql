SELECT
  InvoiceLine.InvoiceId,
  Track.TrackId,
  Track.Name,
  Album.Title,
  Artist.Name
FROM
  InvoiceLine
  LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
  LEFT JOIN Album ON Track.AlbumId == Album.AlbumId
  LEFT JOIN Artist ON Album.ArtistId == Artist.ArtistId
