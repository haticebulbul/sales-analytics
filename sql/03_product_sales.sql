SELECT
    p.Name AS ProductName,
    SUM(sod.LineTotal) AS TotalSales
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSales DESC;
