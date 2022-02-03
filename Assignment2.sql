SELECT COUNT(*)
FROM Production.Product

SELECT COUNT(*)
FROM Production.Product JOIN Production.ProductSubcategory on Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID



SELECT ProductSubcategoryID, COUNT(Name) AS CountedProducts
FROM Production.Product
GROUP BY ProductSubcategoryID

SELECT COUNT(*) AS NoSubCat FROM Production.Product
WHERE ProductSubcategoryID IS NULL

SELECT ProductID, SUM(quantity) AS TheSum
FROM Production.ProductInventory
WHERE LocationID = 40
GROUP BY ProductID
HAVING SUM(quantity) < 100

SELECT Shelf, ProductID,SUM(quantity) AS TheSum
FROM Production.ProductInventory
WHERE LocationID = 40
GROUP BY ProductID, shelf
HAVING SUM(quantity) < 100

SELECT AVG(Quantity) AS TheAvg
FROM Production.ProductInventory
Where LocationID = 10

SELECT ProductID, Shelf, AVG(Quantity) AS TheAvg
FROM Production.ProductInventory
WHERE LocationID = 10 AND Shelf!='N/A'
GROUP BY ROLLUP (Shelf, ProductID) 
ORDER BY Shelf

SELECT Color,Class,COUNT(*) AS TheCount,AVG(ListPrice) AS AvgPrice
FROM Production.Product
WHERE Class IS NOT NULL AND Color IS NOT NULL
GROUP BY GROUPING SETS ((Color), (Class))


SELECT c.Name AS Country,s.Name AS Province
FROM Person.CountryRegion AS c
JOIN Person.StateProvince AS s ON c.CountryRegionCode = s.CountryRegionCode


SELECT c.Name AS Country,s.Name AS Province
FROM Person.CountryRegion AS c
JOIN Person.StateProvince AS s ON c.CountryRegionCode = s.CountryRegionCode
WHERE c.Name IN ('Germany','Canada')

USE Northwind
GO



SELECT Count(Products.UnitsOnOrder)
FROM Products WHERE Products.UnitsOnOrder>0

SELECT TOP 5 SUM(UnitsOnOrder) AS "Saleno", PostalCode 
FROM Products AS p JOIN Suppliers AS s ON p.SupplierID = s.SupplierID
GROUP BY PostalCode
ORDER BY "Saleno" DESC


SELECT COUNT(City) AS "Customer Number", City
FROM Customers 
GROUP BY City


SELECT COUNT(City) AS [Customer Number], City
FROM Customers 
GROUP BY City 
HAVING COUNT(City) > 2

SELECT ContactName, PostalCode
FROM Customers AS c JOIN Orders AS o ON c.CustomerID = o.CustomerID WHERE o.OrderDate > '1998-01-01 00:00:00.000'


SELECT ContactName, OrderDate
FROM Customers AS c JOIN Orders AS o ON c.CustomerID = o.CustomerID ORDER BY OrderDate DESC

