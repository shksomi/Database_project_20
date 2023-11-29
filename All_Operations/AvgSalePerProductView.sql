CREATE VIEW AvgSalePerProduct AS
SELECT sp.Product_ID, 
       sp.Product_Name, 
       AVG(ol.Quantity) AS Avg_Sale_Quantity
FROM Shoe_Product sp
LEFT JOIN Order_Line ol ON sp.Product_ID = ol.Product_ID
GROUP BY sp.Product_ID, sp.Product_Name;

select * from AvgSalePerProduct;