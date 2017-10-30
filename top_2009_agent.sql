SELECT FullName, TheEmployeeId, MAX(TheTotalSales)
FROM (SELECT
  (Employee.FirstName || ' ' || Employee.LastName) AS FullName,
  Employee.EmployeeId AS TheEmployeeId,
  Sum(Invoice.Total) AS TheTotalSales
FROM
  Customer
  LEFT JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
  LEFT JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId
WHERE strftime('%Y',Invoice.InvoiceDate) == '2009'
GROUP BY Employee.EmployeeId)
