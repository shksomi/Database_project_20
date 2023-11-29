CREATE FUNCTION GetBrandProductDetails(@brandName VARCHAR(50))
RETURNS TABLE
AS
RETURN (
    SELECT SP.Product_ID, SP.Product_Name, SP.Product_Description, SP.Price,
           SP.Availability_of_Product, SP.Sizes_Available, SP.Colors_Available,
           C.Category_Type, C.Category_ID,
           CUS.Username, CUS.Email, CUS.First_Name, CUS.Last_Name, CUS.Customer_Address
    FROM Shoe_Product SP
    INNER JOIN Category C ON SP.Category_ID = C.Category_ID
    INNER JOIN Review R ON SP.Product_ID = R.Product_ID
    INNER JOIN Customer CUS ON R.Customer_ID = CUS.Customer_ID
    WHERE SP.Brand_ID = (SELECT Brand_ID FROM Brand WHERE Brand_Name = @brandName)
);
SELECT * FROM GetBrandProductDetails('Nike');