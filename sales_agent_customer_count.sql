SELECT
  COUNT (Customer.CustomerId),
  Customer.SupportRepId,
  (Employee.FirstName || ' ' || Employee.LastName) as SalesRepName
FROM
  Customer
  LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY SupportRepId
