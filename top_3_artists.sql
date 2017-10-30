SELECT
    COUNT (InvoiceLine.InvoiceLineId) as NumberSold,
    Artist.Name AS ArtistName
    FROM
      InvoiceLine
      LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
    LEFT JOIN Album ON Track.AlbumId == Album.AlbumId
    LEFT JOIN Artist ON Album.ArtistId == Artist.ArtistId
  GROUP BY ArtistName
  ORDER BY NumberSold DESC LIMIT 3
