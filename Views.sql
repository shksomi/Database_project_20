------------View Average Sales Per Product-----------------------

CREATE VIEW AvgSalePerProduct AS
SELECT sp.Product_ID, 
       sp.Product_Name, 
       AVG(ol.Quantity) AS Avg_Sale_Quantity
FROM Shoe_Product sp
LEFT JOIN Order_Line ol ON sp.Product_ID = ol.Product_ID
GROUP BY sp.Product_ID, sp.Product_Name;

select * from AvgSalePerProduct;

------------View Top 5 Customers-----------------------

CREATE VIEW Top5Customers AS
SELECT TOP 5 c.Customer_ID, c.First_Name, c.Last_Name, SUM(o.Total_Amount) AS Total_Spending
FROM Customer c
JOIN [Order] o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
ORDER BY Total_Spending DESC;
-- Select from the view to see the top 5 customers
SELECT * FROM Customer;


------------View Top 5 Brands with Ratings-----------------------
CREATE VIEW TopBrandsWithRatingsAndFavBrand AS
SELECT TOP 3
       b.Brand_Name,
       AVG(r.Rating) AS Avg_Rating,
       COUNT(c.Customer_ID) AS Customer_Count
FROM Brand b
LEFT JOIN Shoe_Product sp ON b.Brand_ID = sp.Brand_ID
LEFT JOIN Review r ON sp.Product_ID = r.Product_ID
LEFT JOIN Customer c ON c.Customer_ID = r.Customer_ID
GROUP BY b.Brand_Name, b.Brand_ID
ORDER BY AVG(r.Rating) DESC;

select * from TopBrandsWithRatingsAndFavBrand;

------------View Top Customer with Fav Brands-----------------------
CREATE VIEW TopCustomersWithFavBrands AS
SELECT c.Customer_ID,
       c.Username,
       c.First_Name,
       c.Last_Name,
       r.Category_Type AS Favorite_Brand
FROM Customer c
INNER JOIN Review r ON c.Customer_ID = r.Customer_ID
WHERE r.Rating = (
    SELECT MAX(rr.Rating)
    FROM Review rr
    WHERE rr.Customer_ID = c.Customer_ID
)
GROUP BY c.Customer_ID, c.Username, c.First_Name, c.Last_Name, r.Category_Type;

select * from TopCustomersWithFavBrands;

------------View Top Selling Shoe Products-----------------------
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



