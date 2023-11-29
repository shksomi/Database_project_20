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
