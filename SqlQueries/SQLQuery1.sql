--Create Database
CREATE DAtABASE Super_store;
--Use DB
USE Super_store;
-- Create DateDim Table
CREATE TABLE DateDim (
    DateKey INT PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    Year INT,
    Quarter INT,
    Month INT,
    Day INT
);

-- Create CustomerDim Table
CREATE TABLE CustomerDim (
    CustomerKey INT PRIMARY KEY,
    CustomerName NVARCHAR(225),
    Segment NVARCHAR(255)
);

-- Create ProductDim Table
CREATE TABLE ProductDim (
    ProductKey INT PRIMARY KEY,
    Category NVARCHAR(255),
    SubCategory NVARCHAR(255),
    ProductName NVARCHAR(255)
);

-- Create GeographyDim Table
CREATE TABLE GeographyDim (
    GeographyKey INT PRIMARY KEY,
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    PostalCode NVARCHAR(255),
    Region NVARCHAR(255)
);

-- Create ShipModeDim Table
CREATE TABLE ShipModeDim (
    ShipModeKey INT PRIMARY KEY,
    ShipMode NVARCHAR(255)
);

-- Create SalesFact Table
CREATE TABLE SalesFact (
    RowID INT PRIMARY KEY,
    DateKey INT,
    CustomerKey INT,
    ProductKey INT,
    GeographyKey INT,
    ShipModeKey INT,
    Sales DECIMAL(18, 2),
    Quantity INT,
    Discount DECIMAL(18, 2),
    Profit DECIMAL(18, 2),
    FOREIGN KEY (DateKey) REFERENCES DateDim(DateKey),
    FOREIGN KEY (CustomerKey) REFERENCES CustomerDim(CustomerKey),
    FOREIGN KEY (ProductKey) REFERENCES ProductDim(ProductKey),
    FOREIGN KEY (GeographyKey) REFERENCES GeographyDim(GeographyKey),
    FOREIGN KEY (ShipModeKey) REFERENCES ShipModeDim(ShipModeKey)
);

--Create a table for sales2014
CREATE TABLE dbo.OrderDetails_2014 (
    OrderDate DATE,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(255),
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    Region NVARCHAR(255),
    ProductName NVARCHAR(255),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Profit DECIMAL(18, 2)
);

--Create a table for sales2015
CREATE TABLE dbo.OrderDetails_2015 (
    OrderDate DATE,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(255),
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    Region NVARCHAR(255),
    ProductName NVARCHAR(255),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Profit DECIMAL(18, 2)
);

--Create a table for sales2016
CREATE TABLE dbo.OrderDetails_2016 (
    OrderDate DATE,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(255),
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    Region NVARCHAR(255),
    ProductName NVARCHAR(255),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Profit DECIMAL(18, 2)
);

--Create a table for sales2017
CREATE TABLE dbo.OrderDetails_2017 (
    OrderDate DATE,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(255),
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    Region NVARCHAR(255),
    ProductName NVARCHAR(255),
    Sales DECIMAL(18, 2),
    Quantity INT,
    Profit DECIMAL(18, 2)
);

