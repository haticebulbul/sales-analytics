SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    SUM(sod.LineTotal) AS TotalRevenue
FROM SalesLT.Customer c
JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalRevenue DESC;
