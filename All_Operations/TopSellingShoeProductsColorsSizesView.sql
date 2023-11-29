CREATE VIEW TopSellingShoeProducts AS
SELECT 
    sp.Product_ID,
    sp.Product_Name,
    sp.Sizes_Available,
    sp.Colors_Available,
    ISNULL(s.TotalSales, 0) AS TotalSales
FROM 
    Shoe_Product sp
LEFT JOIN (
    SELECT 
        ol.Product_ID,
        COUNT(*) AS TotalSales
    FROM 
        Order_Line ol
    GROUP BY 
        ol.Product_ID
) s ON sp.Product_ID = s.Product_ID;

select * from TopSellingShoeProducts;
