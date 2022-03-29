use SuperStore

----------------ORDER TABLE---------------------

ALTER TABLE Orders
    ADD CONSTRAINT FK_Orders_Customer FOREIGN KEY (CustomerID)
    REFERENCES Customers (CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE


ALTER TABLE Orders
    ADD CONSTRAINT FK_Orders_ShipModels FOREIGN KEY (ShipModeID)
    REFERENCES ShipModels (ShipModeID)
    ON DELETE CASCADE
    ON UPDATE CASCADE


ALTER TABLE Orders
    ADD CONSTRAINT FK_Orders_Products FOREIGN KEY (UniqueProductID)
    REFERENCES Products (UniqueProductID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

--------------CUSTOMER TABLES-------------------

ALTER TABLE Customers
    ADD CONSTRAINT FK_Customers_Localisations FOREIGN KEY (PostalCode)
    REFERENCES Localisations (PostalCode)
    ON DELETE CASCADE
    ON UPDATE CASCADE

ALTER TABLE Customers
    ADD CONSTRAINT FK_Customers_Segments FOREIGN KEY (SegmentID)
    REFERENCES Segments (SegmentID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

-------------LCOALISATION TABLES----------------

ALTER TABLE Localisations
    ADD CONSTRAINT FK_Localisations_Cities FOREIGN KEY (CityID)
    REFERENCES Cities (CityID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

ALTER TABLE Localisations
    ADD CONSTRAINT FK_Localisations_States FOREIGN KEY (StateID)
    REFERENCES States (StateID)
    ON DELETE CASCADE
    ON UPDATE CASCADE


ALTER TABLE Localisations
    ADD CONSTRAINT FK_Localisations_Regions FOREIGN KEY (RegionID)
    REFERENCES Regions (RegionID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

---------------PRODUCT TABLES-------------------

ALTER TABLE Products
    ADD CONSTRAINT FK_Products_SubCategories FOREIGN KEY (SubCategoryID)
    REFERENCES SubCategories (SubCategoryID)
    ON DELETE CASCADE
    ON UPDATE CASCADE



ALTER TABLE SubCategories
    ADD CONSTRAINT FK_SubcategoriesCategories FOREIGN KEY (CategoryID)
    REFERENCES Categories (CategoryID)
    ON DELETE CASCADE
    ON UPDATE CASCADE