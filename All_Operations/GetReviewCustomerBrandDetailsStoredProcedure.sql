-- Stored Procedure Definition
CREATE PROCEDURE GetReviewCustomerBrandDetails
    @Review_ID INT
AS
BEGIN
    DECLARE @ReviewDetails TABLE (
        Review_ID INT,
        Product_ID INT,
        Customer_ID INT,
        Rating INT,
        Category_Type VARCHAR(50)
    );

    DECLARE @CustomerDetails TABLE (
        Customer_ID INT,
        Username VARCHAR(50),
        Email VARCHAR(50),
        First_Name VARCHAR(20),
        Last_Name VARCHAR(20),
        Customer_Address VARCHAR(100)
    );

    DECLARE @BrandDetails TABLE (
        Brand_ID INT,
        Brand_Name VARCHAR(50),
        Brand_Website VARCHAR(100)
    );

    DECLARE @CombinedDetails TABLE (
        Review_ID INT,
        Product_ID INT,
        Customer_ID INT,
        Rating INT,
        Category_Type VARCHAR(50),
        Customer_ID_Cust INT,
        Username VARCHAR(50),
        Email VARCHAR(50),
        First_Name VARCHAR(20),
        Last_Name VARCHAR(20),
        Customer_Address VARCHAR(100),
        Brand_ID INT,
        Brand_Name VARCHAR(50),
        Brand_Website VARCHAR(100)
    );

    -- Retrieve Review Details
    INSERT INTO @ReviewDetails (Review_ID, Product_ID, Customer_ID, Rating, Category_Type)
    SELECT Review_ID, Product_ID, Customer_ID, Rating, Category_Type
    FROM Review
    WHERE Review_ID = @Review_ID;

    -- Retrieve Customer Details
    INSERT INTO @CustomerDetails (Customer_ID, Username, Email, First_Name, Last_Name, Customer_Address)
    SELECT Customer_ID, Username, Email, First_Name, Last_Name, Customer_Address
    FROM Customer
    WHERE Customer_ID IN (SELECT Customer_ID FROM @ReviewDetails);

    -- Retrieve Brand Details
    INSERT INTO @BrandDetails (Brand_ID, Brand_Name, Brand_Website)
    SELECT Brand_ID, Brand_Name, Brand_Website
    FROM Brand
    WHERE Brand_ID IN (SELECT Brand_ID FROM Shoe_Product WHERE Product_ID IN (SELECT Product_ID FROM @ReviewDetails));

    -- Combine Review, Customer, and Brand Details
    INSERT INTO @CombinedDetails
    SELECT RD.*, CD.*, BD.*
    FROM @ReviewDetails RD
    CROSS JOIN @CustomerDetails CD
    CROSS JOIN @BrandDetails BD;

    -- Display Combined Details
    SELECT * FROM @CombinedDetails;
END;
GO

-- Execution Query
DECLARE @ReviewID INT = 1; -- Change the Review ID as needed

EXEC GetReviewCustomerBrandDetails @Review_ID = @ReviewID;
