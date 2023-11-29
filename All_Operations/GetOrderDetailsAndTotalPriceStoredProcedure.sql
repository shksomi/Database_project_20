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