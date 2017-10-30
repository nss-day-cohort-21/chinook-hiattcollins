SELECT
  COUNT (InvoiceLine.InvoiceLineId),
  Invoice.*
FROM
  Invoice
  LEFT JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
