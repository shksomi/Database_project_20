-- Stored Procedure to Get Customer  Shipping and Delivery Details-------
CREATE PROCEDURE GetCustomerShippingAndDeliveryDetails
    @Customer_ID INT
AS
BEGIN
    DECLARE @ShippingDetails TABLE (
        Order_ID INT,
        Order_Date DATE,
        Shipping_Address VARCHAR(100),
        Total_Amount FLOAT,
        Payment_Status VARCHAR(25),
        Order_Status VARCHAR(25)
    );

    DECLARE @DeliveryDetails TABLE (
        Delivery_ID INT,
        Carrier_Name VARCHAR(25),
        Tracking_Number VARCHAR(10),
        Delivery_Date DATE,
        Delivery_Status VARCHAR(50),
        Delivery_Address VARCHAR(200),
        Delivery_Cost FLOAT
    );

    DECLARE @CombinedDetails TABLE (
        Order_ID INT,
        Order_Date DATE,
        Shipping_Address VARCHAR(100),
        Total_Amount FLOAT,
        Payment_Status VARCHAR(25),
        Order_Status VARCHAR(25),
        Delivery_ID INT,
        Carrier_Name VARCHAR(25),
        Tracking_Number VARCHAR(10),
        Delivery_Date DATE,
        Delivery_Status VARCHAR(50),
        Delivery_Address VARCHAR(200),
        Delivery_Cost FLOAT
    );

    -- Retrieve Shipping Details
    INSERT INTO @ShippingDetails (Order_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
    SELECT O.Order_ID, O.Order_Date, O.Shipping_Address, O.Total_Amount, O.Payment_Status, O.Order_Status
    FROM [Order] O
    WHERE O.Customer_ID = @Customer_ID;

    -- Retrieve Delivery Details
    INSERT INTO @DeliveryDetails (Delivery_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
    SELECT D.Delivery_ID, D.Carrier_Name, D.Tracking_Number, D.Delivery_Date, D.Delivery_Status, D.Delivery_Address, D.Delivery_Cost
    FROM Delivery D
    INNER JOIN [Order] O ON O.Order_ID = D.Order_ID
    WHERE O.Customer_ID = @Customer_ID;

    -- Combine Shipping and Delivery Details
    INSERT INTO @CombinedDetails
    SELECT * FROM @ShippingDetails
    CROSS JOIN @DeliveryDetails;

    -- Display Combined Details
    SELECT * FROM @CombinedDetails;
END;
GO

-- Execution Query
DECLARE @CustomerID INT = 1; -- Change the Customer ID as needed

EXEC GetCustomerShippingAndDeliveryDetails @Customer_ID = @CustomerID;



-- Stored Procedure to Stored Procedure to Get Order details and Total Price-------
CREATE PROCEDURE GetOrderDetailsAndTotalPrice
    @Customer_ID INT,
    @Order_ID INT
AS
BEGIN
    DECLARE @Total_Price FLOAT

    SELECT @Total_Price = SUM(S.Price * OL.Quantity) 
    FROM [Order] O
    INNER JOIN Order_Line OL ON O.Order_ID = OL.Order_ID
    INNER JOIN Shoe_Product S ON OL.Product_ID = S.Product_ID
    WHERE O.Order_ID = @Order_ID
    AND O.Customer_ID = @Customer_ID

    SELECT 
        O.Order_ID,
		C.Customer_ID AS Customer_ID,
        C.Username AS Customer_Username,
        C.Email AS Customer_Email,
        C.First_Name AS Customer_FirstName,
        C.Last_Name AS Customer_LastName,
        @Total_Price AS 'Total Price'
    FROM [Order] O
    INNER JOIN Customer C ON O.Customer_ID = C.Customer_ID
    WHERE O.Order_ID = @Order_ID
    AND O.Customer_ID = @Customer_ID
END;

DECLARE @CustomerID INT = 1 -- Replace with the specific Customer_ID
DECLARE @OrderID INT = 1 -- Replace with the specific Order_ID

EXEC GetOrderDetailsAndTotalPrice
    @Customer_ID = @CustomerID,
    @Order_ID = @OrderID


-- Stored Procedure to Get Product Category and Supplier Details-------

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


-- Stored Procedure to Stored Procedure to Get Products and Brand Id-------
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


-- Stored Procedure to Get Customer Review and  Brand Details-------
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
