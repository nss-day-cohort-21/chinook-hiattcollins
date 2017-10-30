SELECT
  invoice.Total,
  (Customer.FirstName || ' ' || Customer.LastName) as CustomerName,
  Invoice.BillingCountry,
  (Employee.FirstName || ' ' || Employee.LastName) as SalesAgent
FROM
  Customer
  LEFT JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId
  LEFT JOIN Employee ON  Customer.SupportRepId == Employee.EmployeeId
