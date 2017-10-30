SELECT
  (Employee.FirstName || ' ' || Employee.LastName) as FullName,
  Employee.EmployeeId,
  Customer.SupportRepId,
  Customer.CustomerId,
  Invoice.*
FROM
  Customer
  LEFT JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
  LEFT JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId
