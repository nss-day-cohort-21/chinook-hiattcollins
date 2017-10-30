SELECT
  InvoiceLine.InvoiceId,
  Track.TrackId,
  Track.Name
FROM
  InvoiceLine
  LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
