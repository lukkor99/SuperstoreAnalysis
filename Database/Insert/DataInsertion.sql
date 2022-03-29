USE SuperStore;

---------------PRODUCT TABLES-------------------


INSERT INTO Categories (CategoryName)
SELECT  DISTINCT Category
FROM TempTable


INSERT INTO SubCategories (SubCategoryName, CategoryID)
SELECT  distinct [Sub-Category]
       ,CategoryID
FROM TempTable
JOIN Categories
ON CategoryName = Category


INSERT INTO Products (ProductId, ProductName, SubCategoryID)
SELECT  distinct [Product ID]
       ,[Product Name]
       ,SubCAtegoryID
FROM TempTable
LEFT OUTER JOIN SubCategories
ON [Sub-Category] = SubCategoryName
ORDER BY [Product ID]


-------------LCOALISATION TABLES----------------


INSERT INTO Regions (RegionName)
SELECT  distinct Region
FROM TempTable

INSERT INTO States (StateName)
SELECT  distinct State
FROM TempTable

INSERT INTO Cities
SELECT  distinct City
FROM TempTable

INSERT INTO Localisations (PostalCode, CityID, StateID, RegionID)
SELECT  distinct [Postal Code]
       ,CityID
       ,StateID
       ,RegionID
FROM TempTable
JOIN Cities
ON City = CityName
JOIN States
ON State = StateName
JOIN Regions
ON Region = RegionName
ORDER BY [Postal Code] desc


--------------CUSTOMER TABLES-------------------


INSERT INTO Segments (SegmentName)
SELECT  DISTINCT Segment
FROM TempTable;

INSERT INTO ShipModels (ShipModeName)
SELECT  distinct [Ship Mode]
FROM TempTable;

INSERT INTO Customers (CustomerID, CustomerName)
select distinct [Customer ID], [Customer Name]
from TempTable

UPDATE Customers
SET PostalCode = [Postal Code]
FROM TempTable
WHERE CustomerID = [Customer ID] 

UPDATE Customers
SET SegmentID = A.SegmentID
FROM Segments A
JOIN TempTable B
ON B.Segment = A.SegmentName
WHERE CustomerID = [Customer ID]


----------------ORDER TABLE---------------------


INSERT INTO Orders (OderDate, ShipDate, ProductID, Sales, Quantity, Discount, Profit)
SELECT  [Order Date]
       ,[Ship Date]
       ,[Product ID]
       ,Sales
       ,Quantity
       ,Discount
       ,Profit
FROM TempTable

UPDATE Orders
SET ShipModeID = B.ShipModeID
FROM TempTable A
JOIN ShipModels B
ON A.[Ship Mode] = ShipModeName
WHERE A.[Order Date] = Orders.OderDate
AND A.[Ship Date] = Orders.ShipDate
AND A.[Product ID] = Orders.ProductID
AND A.Sales = Orders.Sales
AND A.Quantity = Orders.Quantity
AND A.Discount = Orders.Discount
AND A.Profit = Orders.Profit

UPDATE Orders
SET CustomerID = A.[Customer ID]
FROM TempTable A
JOIN Customers B
ON A.[Customer ID] = B.CustomerID
WHERE A.[Order Date] = Orders.OderDate
AND A.[Ship Date] = Orders.ShipDate
AND A.[Product ID] = Orders.ProductID
AND A.Sales = Orders.Sales
AND A.Quantity = Orders.Quantity
AND A.Discount = Orders.Discount
AND A.Profit = Orders.Profit

UPDATE Orders
SET PostalCode = A.[Postal Code]
FROM TempTable A
JOIN Localisations B
ON A.[Postal Code] = B.PostalCode
WHERE A.[Customer ID] = Orders.CustomerID
AND A.[Order Date] = Orders.OderDate
AND A.[Ship Date] = Orders.ShipDate
AND A.[Product ID] = Orders.ProductID
AND A.Sales = Orders.Sales
AND A.Quantity = Orders.Quantity
AND A.Discount = Orders.Discount
AND A.Profit = Orders.Profit

UPDATE Orders
SET UniqueProductID = B.UniqueProductID
FROM Products B
JOIN TempTable A
ON A.[Product ID] = B.ProductID
WHERE A.[Postal Code] = Orders.PostalCode
AND A.[Customer ID] = Orders.CustomerID
AND A.[Order Date] = Orders.OderDate
AND A.[Ship Date] = Orders.ShipDate
AND A.[Product ID] = Orders.ProductID
AND A.Sales = Orders.Sales
AND A.Quantity = Orders.Quantity
AND A.Discount = Orders.Discount
AND A.Profit = Orders.Profit

