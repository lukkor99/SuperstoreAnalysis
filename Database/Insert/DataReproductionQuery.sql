use SuperStore;

------------DATA REPRODUCTION QUERY ------------


SELECT  A.OderDate
       ,A.ShipDate
       ,B.ShipModeName
       ,C.CustomerID
       ,C.CustomerName
       ,D.SegmentName
       ,F.CityName
       ,G.StateName
       ,H.RegionName
       ,E.PostalCode
       ,I.ProductID
       ,K.CategoryName
       ,J.SubCategoryName
       ,I.ProductName
       ,A.Sales
       ,A.Quantity
       ,A.Discount
       ,A.Profit
FROM Orders A
LEFT JOIN ShipModels B
ON A.ShipModeID = B.ShipModeID
LEFT JOIN Customers C
ON A.CustomerID = C.CustomerID
LEFT JOIN Segments D
ON C.SegmentID = D.SegmentID
LEFT JOIN Localisations E
ON C.PostalCode = E.PostalCode
LEFT JOIN Cities F
ON E.CityID = F.CityID
LEFT JOIN States G
ON E.StateID = G.StateID
LEFT JOIN Regions H
ON E.RegionID = H.RegionID
LEFT JOIN Products I
ON A.UniqueProductID = I.UniqueProductID
LEFT JOIN SubCategories J
ON I.SubCategoryID = J.SubCategoryID
LEFT JOIN Categories K
ON J.CategoryID = K.CategoryID
