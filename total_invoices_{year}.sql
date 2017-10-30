SELECT COUNT(InvoiceId), strftime('%Y',InvoiceDate)
FROM Invoice
WHERE strftime('%Y',InvoiceDate) == '2009' OR strftime('%Y',InvoiceDate) == '2011'
GROUP BY strftime('%Y',InvoiceDate)
