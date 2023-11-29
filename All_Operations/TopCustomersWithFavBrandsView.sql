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