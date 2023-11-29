-- Stored Procedure Definition
CREATE PROCEDURE GetProductCategorySupplierDetails
    @Product_ID INT
AS
BEGIN
    DECLARE @ProductDetails TABLE (
        Product_ID INT,
        Product_Name VARCHAR(50),
        Product_Description VARCHAR(200),
        Brand_ID INT,
        Category_ID INT,
        Price FLOAT,
        Availability_of_Product BIT,
        Sizes_Available FLOAT,
        Colors_Available VARCHAR(100)
    );

    DECLARE @CategoryDetails TABLE (
        Category_ID INT,
        Category_Type VARCHAR(50)
    );

    DECLARE @SupplierDetails TABLE (
        Supplier_ID INT,
        Supplier_Name VARCHAR(100),
        Contact_Information VARCHAR(50),
        Quantity INT
    );

    DECLARE @CombinedDetails TABLE (
        Product_ID INT,
        Product_Name VARCHAR(50),
        Product_Description VARCHAR(200),
        Brand_ID INT,
        Category_ID INT,
        Price FLOAT,
        Availability_of_Product BIT,
        Sizes_Available FLOAT,
        Colors_Available VARCHAR(100),
        Category_ID_Cat INT,
        Category_Type VARCHAR(50),
        Supplier_ID INT,
        Supplier_Name VARCHAR(100),
        Contact_Information VARCHAR(50),
        Quantity INT
    );

    -- Retrieve Product Details
    INSERT INTO @ProductDetails (Product_ID, Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
    SELECT Product_ID, Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available
    FROM Shoe_Product
    WHERE Product_ID = @Product_ID;

    -- Retrieve Category Details
    INSERT INTO @CategoryDetails (Category_ID, Category_Type)
    SELECT Category_ID, Category_Type
    FROM Category
    WHERE Category_ID IN (SELECT Category_ID FROM @ProductDetails);

    -- Retrieve Supplier Details
    INSERT INTO @SupplierDetails (Supplier_ID, Supplier_Name, Contact_Information, Quantity)
    SELECT Supplier_ID, Supplier_Name, Contact_Information, Quantity
    FROM Supplier
    WHERE Supplier_ID IN (SELECT Supplier_ID FROM ProductSupplyChain WHERE Product_ID = @Product_ID);

    -- Combine Product, Category, and Supplier Details
    INSERT INTO @CombinedDetails
    SELECT PD.*, CD.*, SD.*
    FROM @ProductDetails PD
    CROSS JOIN @CategoryDetails CD
    CROSS JOIN @SupplierDetails SD;

    -- Display Combined Details
    SELECT * FROM @CombinedDetails;
END;
GO

-- Execution Query
DECLARE @ProductID INT = 2; -- Change the Product ID as needed

EXEC GetProductCategorySupplierDetails @Product_ID = @ProductID;
