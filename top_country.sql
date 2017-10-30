SELECT
  MAX(TotalSales), BillingCountry
  FROM
(SELECT
  BillingCountry,
    SUM(Total) AS TotalSales
    FROM Invoice
    GROUP BY BillingCountry)
