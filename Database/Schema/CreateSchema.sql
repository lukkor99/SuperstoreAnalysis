USE SuperStore

----------------ORDER TABLE---------------------

CREATE TABLE Orders(
    OrderID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    OderDate DATETIME NOT NULL,
    ShipDate DATETIME NOT NULL,
    ShipModeID INT,
    CustomerID NVARCHAR(10),
    PostalCode INT,
    UniqueProductID INT,
    ProductID NVARCHAR(25),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(10, 2),
    Profit DECIMAL(10, 2)
)


--------------CUSTOMER TABLES-------------------

CREATE TABLE Customers(
    CustomerID NVARCHAR(10) NOT NULL PRIMARY KEY,
    CustomerName NVARCHAR(30),
    LocalisationID INT, 
    SegmentID INT
)

CREATE TABLE ShipModels(
    ShipModeID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    ShipModeName NVARCHAR(15)
)


CREATE TABLE Segments(
    SegmentID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    SegmentName NVARCHAR(10)
)

-------------LCOALISATION TABLES----------------


CREATE TABLE Localisations( 
    PostalCode int not null primary key, 
    CityID int,
    StateID int, 
    RegionID int 
)

CREATE TABLE Cities(
    CityID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    CityName NVARCHAR(25), 
)

CREATE TABLE States(
    StateID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    StateName NVARCHAR(25),
)

CREATE TABLE Regions (
    RegionID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    RegionName NVARCHAR(10)    
)

---------------PRODUCT TABLES-------------------


CREATE TABLE Products(
    UniqueProductID int NOT NULL PRIMARY KEY IDENTITY(1, 1),
    ProductID NVARCHAR(25) NOT NULL, 
    ProductName NVARCHAR(255),
    SubCategoryID INT NOT NULL
)

CREATE TABLE SubCategories(
    SubCategoryID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    SubCategoryName NVARCHAR(25),
    CategoryID INT NOT NULL
)

CREATE TABLE Categories(
    CategoryID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    CategoryName NVARCHAR(25)
)