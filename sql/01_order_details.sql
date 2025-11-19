SELECT 
    soh.SalesOrderID,
    soh.OrderDate,
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    p.ProductID,
    p.Name AS ProductName,
    sod.OrderQty,
    sod.UnitPrice,
    sod.LineTotal
FROM SalesLT.SalesOrderHeader soh
JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN SalesLT.Customer c ON c.CustomerID = soh.CustomerID
JOIN SalesLT.Product p ON p.ProductID = sod.ProductID;
