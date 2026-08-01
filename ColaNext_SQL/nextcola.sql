SELECT TOP 5 C.CustomerID,C.Name AS CustomerName,
SUM(SO.TotalAmount) AS TotalSpent
FROM dbo.Customer AS C
INNER JOIN 
dbo.SalesOrder AS SO
ON C.CustomerID=SO.CustomerID
GROUP BY 
C.CustomerID,
C.Name
ORDER BY 
TotalSpent DESC;





---------------------------------------------------
Select *
From 
dbo.Supplier;

SELECT*
From 
dbo.Product;



USE NEXT_COLA_OLTP;


SELECT 
    m.ManufacturerID AS SupplierID, 
    m.Name AS SupplierName, 
    COUNT(p.ProductID) AS ProductCount
FROM manufacturer m
JOIN product p ON m.ManufacturerID = p.ManufacturerID
GROUP BY m.ManufacturerID, m.Name
HAVING COUNT(p.ProductID) > 10;