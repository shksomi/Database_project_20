-- Stored Procedure Definition
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
