-- Remove Column10 from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Column10;

-- Remove Column11 from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Column11;

-- Remove Column12 from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Column12;

-- Remove Column13 from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Column13;

-- Remove Column10 from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Column10;
-- Remove Returned_Reason from FactSales
ALTER TABLE Fact_Sales
DROP COLUMN Returned_Reason;


-- Add Primary Key to DimStores (if missing)
ALTER TABLE Dim_Stores
ADD CONSTRAINT PK_StoreID PRIMARY KEY (StoreID);

-- Add Primary Key to DimProduct (if missing)
ALTER TABLE Dim_Product
ADD CONSTRAINT PK_ProductID PRIMARY KEY (ProductID);

-- Add Primary Key to DimReps (if missing)
ALTER TABLE Dim_Reps
ADD CONSTRAINT PK_RepID PRIMARY KEY (RepID);


-- Add Foreign Key from FactSales to DimStores
ALTER TABLE Fact_Sales
ADD CONSTRAINT FK_StoreID
FOREIGN KEY (StoreID) REFERENCES Dim_Stores(StoreID);

-- Add Foreign Key from FactSales to DimProduct
ALTER TABLE Fact_Sales
ADD CONSTRAINT FK_ProductID
FOREIGN KEY (ProductID) REFERENCES Dim_Product(ProductID);

-- Add Foreign Key from FactSales to DimReps
ALTER TABLE Fact_Sales
ADD CONSTRAINT FK_RepID
FOREIGN KEY (RepID) REFERENCES Dim_Reps(RepID);



