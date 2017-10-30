SELECT MAX(NumberSold), GenreName
FROM (SELECT
COUNT (InvoiceLine.InvoiceLineId) as NumberSold,
Genre.Name AS GenreName
FROM
InvoiceLine
LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
LEFT JOIN Genre ON Track.GenreId == Genre.GenreId
GROUP BY GenreName)
