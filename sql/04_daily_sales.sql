SELECT 
    CONVERT(date, OrderDate) AS Date,
    SUM(sod.LineTotal) AS DailyRevenue
FROM SalesLT.SalesOrderHeader soh
JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY CONVERT(date, OrderDate)
ORDER BY Date;
