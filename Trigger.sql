CREATE TRIGGER UpdateMostSellingProductsAndBrands
ON Order_Line
AFTER INSERT
AS
BEGIN
    INSERT INTO MostSellingProductsAndBrands (Product_ID, Brand_ID, Quantity_Sold)
    SELECT 
        i.Product_ID,
        sp.Brand_ID,
        SUM(i.Quantity) AS Quantity_Sold
    FROM inserted i
    JOIN Shoe_Product sp ON i.Product_ID = sp.Product_ID
    GROUP BY i.Product_ID, sp.Brand_ID;

    -- Perform any necessary additional actions here based on the most selling products and brands.
    -- For example, you could update other tables, send notifications, etc.
END;

