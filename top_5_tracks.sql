SELECT
      InvoiceLine.TrackId,
      Track.Name,
      COUNT(InvoiceLine.InvoiceLineId) AS TrackCount,
      strftime('%Y',Invoice.InvoiceDate)
    FROM
      InvoiceLine
      LEFT JOIN Track ON InvoiceLine.TrackId == Track.TrackId
      LEFT JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId
    GROUP BY InvoiceLine.TrackId
    ORDER BY TrackCount DESC LIMIT 5
