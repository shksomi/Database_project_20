CREATE FUNCTION GetCustomerDetailsByID(@CustomerID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT O.Order_ID,
           O.Order_Date,
           O.Shipping_Address,
           O.Total_Amount,
           O.Payment_Status,
           O.Order_Status,
           D.Carrier_Name,
           D.Tracking_Number,
           D.Delivery_Date,
           D.Delivery_Status,
           D.Delivery_Address,
           D.Delivery_Cost,
           P.Product_ID,
           P.Product_Name,
           P.Product_Description,
           P.Price,
           PT.Transaction_ID,
           PT.Payment_Method,
           PT.Amount_Paid
    FROM [Order] O
    JOIN Delivery D ON O.Order_ID = D.Order_ID
    JOIN Payment_Transaction PT ON O.Order_ID = PT.Order_ID
    JOIN Order_Line OL ON O.Order_ID = OL.Order_ID
    JOIN Shoe_Product P ON OL.Product_ID = P.Product_ID
    WHERE O.Customer_ID = @CustomerID
);
SELECT * FROM dbo.GetCustomerDetailsByID(1);
