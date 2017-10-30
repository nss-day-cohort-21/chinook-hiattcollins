SELECT
  (Employee.FirstName || ' ' || Employee.LastName) as FullName,
  Employee.EmployeeId,
  Sum(Invoice.Total)
FROM
  Customer
  LEFT JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
  LEFT JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId
GROUP BY Employee.EmployeeId
