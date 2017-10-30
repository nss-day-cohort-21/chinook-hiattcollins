SELECT FullName, TheEmployeeId, MAX(TheTotalSales)
FROM (SELECT
  (Employee.FirstName || ' ' || Employee.LastName) AS FullName,
  Employee.EmployeeId AS TheEmployeeId,
  ROUND(Sum(Invoice.Total),2) AS TheTotalSales
FROM
  Customer
  LEFT JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
  LEFT JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId
GROUP BY Employee.EmployeeId)

