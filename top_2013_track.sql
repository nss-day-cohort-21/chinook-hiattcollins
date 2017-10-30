SELECT
  TheTrackId,
  TheTrackName,
  MAX(TrackCount),
  TheTrackDate
FROM (SELECT
      InvoiceLine.TrackId AS TheTrackId,
      Track.Name AS TheTrackName,
      COUNT(InvoiceLine.InvoiceLineId) AS TrackCount,
      strftime('%Y',Invoice.InvoiceDate) AS TheTrackDate
    FROM
      InvoiceLine
      LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
      LEFT JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId
    WHERE strftime('%Y',Invoice.InvoiceDate) == '2013'
    GROUP BY InvoiceLine.TrackId
    ORDER BY TrackCount DESC)
