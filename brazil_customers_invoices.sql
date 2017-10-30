SELECT (a.FirstName || ' ' || a.LastName) as FullName,
  c.InvoiceId,c.InvoiceDate,c.BillingCountry
  FROM Customer a
    LEFT JOIN Invoice c
      ON a.CustomerId = c.CustomerId
WHERE a.Country = 'Brazil'
