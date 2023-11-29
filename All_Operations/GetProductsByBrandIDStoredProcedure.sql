-- Stored Procedure Definition
CREATE PROCEDURE GetProductsByBrandID
    @Brand_ID INT
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

    -- Retrieve Product Details by Brand ID
    INSERT INTO @ProductDetails (Product_ID, Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
    SELECT Product_ID, Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available
    FROM Shoe_Product
    WHERE Brand_ID = @Brand_ID;

    -- Display Product Details for the Brand
    SELECT * FROM @ProductDetails;
END;
GO

-- Execution Query
DECLARE @BrandID INT = 1; -- Change the Brand ID as needed

EXEC GetProductsByBrandID @Brand_ID = @BrandID;
