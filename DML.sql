-- Insert statement for Customer table

INSERT INTO Customer ( Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ( 'JohnDoe', 'johndoe@email.com', 'P@ssw0rd', 'John', 'Doe', '123 Main St', 'Credit Card');

-- Insert 1
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('JaneSmith', 'janesmith@email.com', 'SecurePass123', 'Jane', 'Smith', '456 Elm St', 'PayPal');

-- Insert 2
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('RobertJohnson', 'robertjohnson@email.com', 'StrongP@ss', 'Robert', 'Johnson', '789 Oak St', 'Debit Card');

-- Insert 3
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('EmilyBrown', 'emilybrown@email.com', 'Pass1234!', 'Emily', 'Brown', '101 Pine St', 'Bank Transfer');

-- Insert 4
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('DavidWilson', 'davidwilson@email.com', 'SecurePassword', 'David', 'Wilson', '246 Maple St', 'Credit Card');

-- Insert 5
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('SarahMiller', 'sarahmiller@email.com', 'Sarah123!', 'Sarah', 'Miller', '369 Birch St', 'PayPal');

-- Insert 6
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('MichaelLee', 'michaellee@email.com', 'MyP@ssw0rd', 'Michael', 'Lee', '701 Cedar St', 'Debit Card');

-- Insert 7
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('JenniferGarcia', 'jennifergarcia@email.com', 'Jenny123', 'Jennifer', 'Garcia', '852 Pine St', 'Bank Transfer');

-- Insert 8
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('ChristopherClark', 'christopherclark@email.com', 'CClarkSecure', 'Christopher', 'Clark', '963 Elm St', 'Credit Card');

-- Insert 9
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('AvaAdams', 'avaadams@email.com', 'Ava1234', 'Ava', 'Adams', '147 Maple St', 'PayPal');

-- Insert 10
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('DanielMartinez', 'danielmartinez@email.com', 'DanielPass', 'Daniel', 'Martinez', '258 Birch St', 'Debit Card');

-- Insert 11
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('SophiaGonzalez', 'sophiagonzalez@email.com', 'GonzoSophie', 'Sophia', 'Gonzalez', '369 Cedar St', 'Bank Transfer');

-- Insert 12
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('JamesHernandez', 'jameshernandez@email.com', 'James123', 'James', 'Hernandez', '487 Elm St', 'Debit Card');

-- Insert 13
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('OliviaWalker', 'oliviawalker@email.com', 'OliviaSecure', 'Olivia', 'Walker', '596 Birch St', 'Credit Card');

-- Insert 14
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('WilliamPerez', 'williamperez@email.com', 'Will123', 'William', 'Perez', '785 Oak St', 'Bank Transfer');

-- Insert 15
INSERT INTO Customer (Username, Email, Customer_Password, First_Name, Last_Name, Customer_Address, Payment_Methods_ADDED)
VALUES ('CharlotteFlores', 'charlotteflores@email.com', 'FloresC123', 'Charlotte', 'Flores', '896 Cedar St', 'Credit Card');


SELECT * FROM Customer;


-----BRAND-----
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Puma', 'https://www.puma.com');
-- Insert 1
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Adidas', 'https://www.adidas.com');

-- Insert 2
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Nike', 'https://www.nike.com');

-- Insert 3
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('New Balance', 'https://www.newbalance.com');

-- Insert 4
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Reebok', 'https://www.reebok.com');

-- Insert 5
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Under Armour', 'https://www.underarmour.com');

-- Insert 6
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Vans', 'https://www.vans.com');

-- Insert 7
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Converse', 'https://www.converse.com');

-- Insert 8
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Asics', 'https://www.asics.com');

-- Insert 9
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Skechers', 'https://www.skechers.com');

-- Insert 10
INSERT INTO Brand (Brand_Name, Brand_Website)
VALUES ('Fila', 'https://www.fila.com');


SELECT * FROM Brand;


-- Insert statement for Category table
INSERT INTO Category ( Category_Type)
VALUES ('Sneakers');
-- Insert 1

-- Insert 5
INSERT INTO Category (Category_Type)
VALUES ('SPORTS');
-- Insert 2
INSERT INTO Category (Category_Type)
VALUES ('Formal Shoes');

-- Insert 3
INSERT INTO Category (Category_Type)
VALUES ('Sandals');

-- Insert 4
INSERT INTO Category (Category_Type)
VALUES ('Boots');

-- Insert 6
INSERT INTO Category (Category_Type)
VALUES ('Slippers');

-- Insert 7
INSERT INTO Category (Category_Type)
VALUES ('Athletic Shoes');

-- Insert 8
INSERT INTO Category (Category_Type)
VALUES ('Loafers');

-- Insert 9
INSERT INTO Category (Category_Type)
VALUES ('Flip Flops');
SELECT * FROM Category;


-- Insert statement for [Order] table
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (1, '2023-11-22', '456 Elm St', 100.00, 'Transaction Successful', 'Order Placed');
-- Order 2
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (1, '2023-11-25', '321 Maple St', 120.00, 'Transaction Successful', 'Order Placed');

-- Order 3
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (3, '2023-11-26', '555 Cedar St', 90.25, 'Transaction Pending', 'In Cart');

-- Order 4
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (2, '2023-11-27', '888 Pine St', 200.00, 'Transaction Successful', 'Order Placed');

-- Order 5
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (4, '2023-11-28', '777 Elm St', 150.75, 'Transaction Pending', 'In Cart');

-- Order 6
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (3, '2023-11-29', '999 Oak Ave', 80.50, 'Transaction Successful', 'Order Placed');

-- Order 7 for Customer_ID 5
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (5, '2023-11-30', '123 Oak St', 180.00, 'Transaction Successful', 'Order Placed');

-- Order 8 for Customer_ID 7
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (7, '2023-12-01', '456 Maple St', 95.50, 'Transaction Pending', 'In Cart');

-- Order 9 for Customer_ID 6
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (6, '2023-12-02', '789 Elm St', 210.25, 'Transaction Successful', 'Order Placed');

-- Order 10 for Customer_ID 8
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (8, '2023-12-03', '101 Cedar St', 120.00, 'Transaction Successful', 'Order Placed');

-- Order 11 for Customer_ID 9
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (9, '2023-12-04', '321 Pine St', 160.75, 'Transaction Pending', 'In Cart');

-- Order 12 for Customer_ID 10
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (10, '2023-12-05', '555 Maple St', 90.50, 'Transaction Successful', 'Order Placed');

-- Order 13 for Customer_ID 11
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (11, '2023-12-06', '888 Elm St', 175.00, 'Transaction Successful', 'Order Placed');

-- Order 14 for Customer_ID 12
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (12, '2023-12-07', '777 Oak St', 130.75, 'Transaction Pending', 'In Cart');

-- Order 15 for Customer_ID 13
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (13, '2023-12-08', '999 Maple St', 95.50, 'Transaction Successful', 'Order Placed');

-- Order 16 for Customer_ID 14
INSERT INTO [Order] (Customer_ID, Order_Date, Shipping_Address, Total_Amount, Payment_Status, Order_Status)
VALUES (14, '2023-12-09', '123 Cedar St', 200.00, 'Transaction Successful', 'Order Placed');


SELECT * FROM [Order];

-- Insert statement for Shoe_Product table

-- Shoe Product 1
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Air Max', 'Running shoes', 1, 1, 99.99, 1, 10, 'BLACK');

-- Shoe Product 2
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Flex Runner', 'Lightweight trainers', 2, 3, 79.99, 1, 9, 'WHITE');

-- Shoe Product 3
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Zoom Pegasus', 'Performance running shoes', 1, 2, 119.99, 1, 10, 'GREY');

-- Shoe Product 4
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Super Court', 'Classic style sneakers', 3, 1, 89.99, 1, 11, 'WHITE');

-- Shoe Product 5
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Air Zoom', 'Cushioned running shoes', 2, 4, 129.99, 1, 9, 'BLACK');

-- Shoe Product 6
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Retro 5', 'Vintage basketball shoes', 4, 9, 149.99, 1, 10, 'BLACK');

-- Shoe Product 7
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Air Force 1 Low', 'Iconic streetwear sneakers', 9, 1, 129.99, 1, 9, 'WHITE');

-- Shoe Product 8
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Gel-Lyte V', 'Casual sneakers', 10, 1, 109.99, 1, 10, 'BLACK');

-- Shoe Product 9
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('UltraBoost', 'Running shoes', 11, 2, 149.99, 1, 10, 'WHITE');

-- Shoe Product 14
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Superstar', 'Classic shell-toe shoes', 3, 1, 99.99, 1, 10, 'WHITE');

-- Shoe Product 15
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Air Max 270', 'Lifestyle sneakers', 9, 1, 129.99, 1, 10, 'BLACK');

-- Shoe Product 16
INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Classic Leather', 'Vintage sneakers', 7, 10, 89.99, 1, 11, 'GREY');

INSERT INTO Shoe_Product (Product_Name, Product_Description, Brand_ID, Category_ID, Price, Availability_of_Product, Sizes_Available, Colors_Available)
VALUES ('Retro 5', 'Vintage basketball shoes', 4, 1, 149.99, 1, 10, 'BLACK');


SELECT * FROM Shoe_Product;


-- Insert statement for Review table

-- Review 1
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (1, 1, 5, 'Sneakers');
-- Review 2 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (6, 4, 5, 'Sandals');

-- Review 3 (Sneakers)
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (3, 5, 4, 'SPORTS');

-- Review 4 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (2, 6, 3, 'SPORTS');

-- Review 5 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (5, 3, 5, 'Flip Flops');

-- Review 6
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (4, 2, 4, 'Sneakers');

-- Review 7 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (1, 7, 4, 'SNEAKERS');

-- Review 8 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (6, 8, 5, 'Sandals');

-- Review 9 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (3, 9, 3, 'SPORTS');

-- Review 10
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (2, 10, 4, 'Dress Shoes');

-- Review 11 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (5, 11, 5, 'Flip Flops');

-- Review 12
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (4, 12, 3, 'Sneakers');

-- Review 13 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (1, 13, 4, 'SNEAKERS');

-- Review 14 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (6, 14, 5, 'Sandals');

-- Review 15 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (3, 15, 3, 'SPORTS');

-- Review 16 
INSERT INTO Review (Product_ID, Customer_ID, Rating, Category_Type)
VALUES (2, 16, 4, 'Dress Shoes');

SELECT * FROM Review;


-- Insert statement for Order_Line table
INSERT INTO Order_Line ( Product_ID, Order_ID, Quantity)
VALUES (1, 1, 2);

-- Order Line 1
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (1, 1, 2);

-- Order Line 2
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (2, 2, 3);

-- Order Line 3
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (3, 3, 1);

-- Order Line 4
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (4, 4, 2);

-- Order Line 5
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (5, 5, 4);

-- Order Line 6
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (6, 6, 1);


-- Order Line for Order_ID 7 and Product_ID 7
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (7, 7, 3);

-- Order Line for Order_ID 8 and Product_ID 8
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (8, 8, 2);

-- Order Line for Order_ID 9 and Product_ID 9
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (9, 9, 1);

-- Order Line for Order_ID 10 and Product_ID 10
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (10, 10, 4);

-- Order Line for Order_ID 11 and Product_ID 11
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (11, 11, 2);

-- Order Line for Order_ID 12 and Product_ID 12
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (12, 12, 3);

-- Order Line for Order_ID 13 and Product_ID 13
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (13, 13, 5);

-- Order Line for Order_ID 14 and Product_ID 6
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (6, 14, 1);

-- Order Line for Order_ID 15 and Product_ID 9
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (9, 15, 2);

-- Order Line for Order_ID 16 and Product_ID 10
INSERT INTO Order_Line (Product_ID, Order_ID, Quantity)
VALUES (10, 16, 3);

SELECT * FROM Order_Line;


-- Insert statement for Supplier table
INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('ABCInc.', '123-456-7890', 100);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('XYZCorp.', '999-888-7777', 150);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('BestGoodsLtd.', '111-222-3333', 200);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('GlobalSuppliesCo.', '444-555-6666', 300);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('TopNotchProviders', '777-888-9999', 250);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('QualityMerchants', '123-456-7890', 180);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('GlobalTraders', '555-444-3333', 280);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('EagleCommerce', '777-999-2222', 320);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('CityMerchants', '111-888-6666', 190);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('TopNotchSupplies', '333-777-5555', 400);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('MegaDealsInc', '888-222-9999', 275);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('GoldenSupplies', '666-333-1111', 360);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('PacificTrade', '444-777-8888', 210);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('SunriseImports', '999-555-6666', 190);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('OceanicProducts', '777-222-4444', 290);

INSERT INTO Supplier (Supplier_Name, Contact_Information, Quantity)
VALUES ('NatureHarvest', '888-111-5555', 240);


SELECT * FROM Supplier;


-- Insert statement for Inventory table
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (1, 50);

-- Inventory for Product 2
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (2, 40);

-- Inventory for Product 3
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (3, 60);

-- Inventory for Product 4
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (4, 75);

-- Inventory for Product 5
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (5, 55);

-- Inventory for Product 6
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (6, 30);

-- Insert statement for Inventory table
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (7, 50);

-- Inventory for Product 2
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (8, 40);

-- Inventory for Product 3
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (9, 60);

-- Inventory for Product 4
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (10, 75);

INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (11, 10);

-- Inventory for Product 3
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (12, 30);

-- Inventory for Product 4
INSERT INTO Inventory (Product_ID, Stock_Quantity)
VALUES (13, 15);
SELECT * FROM Inventory;




-- Insert statement for ProductSupplyChain table (REVIEW)
INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (1, 1, 'Contract terms for Product 1');

INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (2, 3, 'Contract terms for Product 3');

INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (3, 4, 'Contract terms for Product 4');

INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (4, 5, 'Contract terms for Product 5');

INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (5, 6, 'Contract terms for Product 6');

INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (6, 2, 'Contract terms for Product 7');

-- Product Supply Chain 7
INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (7, 8, 'Supplier 7 Agreement for Product 8');

-- Product Supply Chain 8
INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (8, 9, 'Supplier 8 Terms for Product 9');

-- Product Supply Chain 9
INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (9, 10, 'Contractual Details for Product 10');

-- Product Supply Chain 10
INSERT INTO ProductSupplyChain (Supplier_ID, Product_ID, Supply_Contract_Details)
VALUES (10, 11, 'Supplier 10 Agreement for Product 11');

SELECT * FROM ProductSupplyChain;



-- Insert statement for Stock_Item table (REVIEW)
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (1,1, 'Supplier 1 Contract Details for Inventory 1');
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (2, 2, 'Supplier 2 Contract Details for Inventory 2');

INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (3, 3, 'Supplier 3 Contract Details for Inventory 3');

INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (4, 4, 'Supplier 4 Contract Details for Inventory 4');

INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (5, 5, 'Supplier 5 Contract Details for Inventory 5');

INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (6, 6, 'Supplier 6 Contract Details for Inventory 6');

-- Stock_Item for Supplier 7 and Inventory 1
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (7, 1, 'Supplier 7 Contract Details for Inventory 1');

-- Stock_Item for Supplier 8 and Inventory 2
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (8, 2, 'Supplier 8 Contract Details for Inventory 2');

-- Stock_Item for Supplier 9 and Inventory 3
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (9, 3, 'Supplier 9 Contract Details for Inventory 3');

-- Stock_Item for Supplier 10 and Inventory 4
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (10, 4, 'Supplier 10 Contract Details for Inventory 4');

-- Stock_Item for Supplier 11 and Inventory 5
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (11, 5, 'Supplier 11 Contract Details for Inventory 5');

-- Stock_Item for Supplier 12 and Inventory 6
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (12, 6, 'Supplier 12 Contract Details for Inventory 6');

-- Stock_Item for Supplier 13 and Inventory 1
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (13, 1, 'Supplier 13 Contract Details for Inventory 1');

-- Stock_Item for Supplier 14 and Inventory 2
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (14, 2, 'Supplier 14 Contract Details for Inventory 2');

-- Stock_Item for Supplier 15 and Inventory 3
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (15, 3, 'Supplier 15 Contract Details for Inventory 3');

-- Stock_Item for Supplier 16 and Inventory 4
INSERT INTO Stock_Item (Supplier_ID, Inventory_ID, Supply_Contract_Details)
VALUES (16, 4, 'Supplier 16 Contract Details for Inventory 4');

SELECT * FROM Stock_Item;


INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (1, 'Credit Card', 150.00);
-- Payment Transaction for Order 2
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (2, 'PayPal', 120.00);

-- Payment Transaction for Order 4
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (4, 'Credit Card', 200.00);
-- Payment Transaction for Order 6
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (6, 'Credit Card', 80.50);

-- Payment Transaction for Order 7 (Credit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (7, 'Credit Card', 90.25);

-- Payment Transaction for Order 8 (Debit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (8, 'PayPal', 150.00);

-- Payment Transaction for Order 9 (Credit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (9, 'Credit Card', 120.00);

-- Payment Transaction for Order 10 (Debit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (10, 'PayPal', 200.00);

-- Payment Transaction for Order 11 (Credit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (11, 'PayPal', 150.75);

-- Payment Transaction for Order 12 (Debit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (12, 'PayPal', 80.50);

-- Payment Transaction for Order 13 (Credit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (13, 'Credit Card', 110.00);

-- Payment Transaction for Order 14 (Debit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (14, 'Debit Card', 160.00);

-- Payment Transaction for Order 15 (Credit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (15, 'Credit Card', 130.00);

-- Payment Transaction for Order 16 (Debit Card)
INSERT INTO Payment_Transaction (Order_ID, Payment_Method, Amount_Paid)
VALUES (16, 'Debit Card', 95.00);

SELECT * FROM Payment_Transaction;



INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (1, GETDATE());

-- 2
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (2, GETDATE());

-- 3
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (3, GETDATE());

-- 4
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (4, GETDATE());

-- 5
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (5, GETDATE());

-- 6
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (6, GETDATE());

-- Shipping for Order 7
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (7, GETDATE());

-- Shipping for Order 8
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (8, GETDATE());

-- Shipping for Order 9
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (9, GETDATE());

-- Shipping for Order 10
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (10, GETDATE());

-- Shipping for Order 11
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (11, GETDATE());

-- Shipping for Order 12
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (12, GETDATE());

-- Shipping for Order 13
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (13, GETDATE());

-- Shipping for Order 14
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (14, GETDATE());

-- Shipping for Order 15
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (15, GETDATE());

-- Shipping for Order 16
INSERT INTO Shipping (Order_ID, Shipment_Date)
VALUES (16, GETDATE());


SELECT * FROM Shipping;



INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (1, 'CarrierXYZ', '1234567890', '2023-11-22', 'In Transit', '123 Main St', 50.00);
-- 2
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (2, 'CarrierABC', '9876543210', '2023-11-23', 'In Transit', '456 Elm St', 60.00);

-- 3
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (3, 'CarrierDEF', '2468101357', '2023-11-24', 'In Transit', '321 Maple St', 45.00);

-- 4
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (4, 'CarrierGHI', '1357924680', '2023-11-25', 'In Transit', '555 Cedar St', 70.00);

-- 5
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (5, 'CarrierJKL', '0246813579', '2023-11-26', 'In Transit', '888 Pine St', 55.00);

-- 6
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (6, 'CarrierMNO', '3692581470', '2023-11-27', 'In Transit', '777 Elm St', 80.00);

-- Delivery for Order 7
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (7, 'CarrierPQR', '1593578520', '2023-11-28', 'In Transit', '999 Oak Ave', 65.00);

-- Delivery for Order 8
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (8, 'CarrierSTU', '7539514682', '2023-11-29', 'In Transit', '101 Pine St', 75.00);

-- Delivery for Order 9
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (9, 'CarrierVWX', '8642097531', '2023-11-30', 'In Transit', '246 Maple St', 85.00);

-- Delivery for Order 10
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (10, 'CarrierYZA', '9876321450', '2023-12-01', 'In Transit', '369 Birch St', 90.00);

-- Delivery for Order 11
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (11, 'CarrierBCD', '6542319870', '2023-12-02', 'In Transit', '456 Elm St', 55.00);

-- Delivery for Order 12
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (12, 'CarrierEFG', '3216549870', '2023-12-03', 'In Transit', '123 Main St', 60.00);

-- Delivery for Order 13
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (13, 'CarrierGHI', '9871236540', '2023-12-04', 'In Transit', '789 Oak St', 70.00);

-- Delivery for Order 14
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (14, 'CarrierJKL', '8523691470', '2023-12-05', 'In Transit', '555 Cedar St', 65.00);

-- Delivery for Order 15
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (15, 'CarrierMNO', '3692581470', '2023-12-06', 'In Transit', '777 Elm St', 80.00);

-- Delivery for Order 16
INSERT INTO Delivery (Order_ID, Carrier_Name, Tracking_Number, Delivery_Date, Delivery_Status, Delivery_Address, Delivery_Cost)
VALUES (16, 'CarrierPQR', '1472583690', '2023-12-07', 'In Transit', '888 Pine St', 75.00);

SELECT * FROM Delivery;