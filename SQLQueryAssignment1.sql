SELECT ProductID,Name,Color,ListPrice 
FROM Production.Product;





SELECT ProductID,Name,Color,ListPrice 
FROM Production.Product 
WHERE ListPrice!=0;


SELECT ProductID,Name,Color,ListPrice 
FROM Production.Product
WHERE Color IS NULL;

SELECT ProductID,Name,Color,ListPrice 
FROM Production.Product
WHERE Color IS NOT NULL;

SELECT ProductID,Name,Color,ListPrice 
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice>0;



SELECT Name + ' ' + Color
FROM Production.Product
WHERE Color IS NOT NULL;


SELECT Name,Color
FROM Production.Product
WHERE Name LIKE '%C_A%' AND (Color = 'Black' OR Color='Silver') AND ListPrice=0;


SELECT ProductID,Name
FROM Production.Product
WHERE ProductID >= 400 and ProductID <=500;

SELECT ProductID,Name,Color
FROM Production.Product
WHERE Color = 'Black' or Color='Blue';


SELECT *
FROM Production.Product
WHERE Name LIKE 'S%'


SELECT Name,ListPrice
FROM Production.Product
WHERE Name LIKE 'S%'
ORDER BY Name



SELECT Name,ListPrice
FROM Production.Product
WHERE Name LIKE 'S%' OR Name LIKE 'A%'
ORDER BY Name


SELECT Name
FROM Production.Product
WHERE Name LIKE 'S%' OR Name LIKE 'A%'
ORDER BY Name


SELECT *
FROM Production.Product
WHERE Name LIKE 'SPO%' AND Name NOT LIKE 'SPOK%'
ORDER BY Name

SELECT DISTINCT Color
FROM Production.Product
ORDER BY Color DESC


SELECT DISTINCT ProductSubcategoryID,Color 
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL
ORDER BY Color 


