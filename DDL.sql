CREATE DATABASE marketplace;
USE marketplace
GO

CREATE TABLE Customer(
    Customer_ID INT NOT NULL IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Customer_Password VARCHAR(255) NOT NULL,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Customer_Address VARCHAR(100),
    Payment_Methods_ADDED VARCHAR(100) NULL,
    CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID),
    CONSTRAINT Email_Check CHECK(Email LIKE '%___@___%.__%'),
    CONSTRAINT Payment_Methods_ADDED_Check 
        CHECK (
            Payment_Methods_ADDED IN ('Credit Card', 'PayPal','Debit Card', 'Bank Transfer')
        )
);


GO 


CREATE TABLE [Order](
    Order_ID INT NOT NULL IDENTITY(1,1),
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Shipping_Address VARCHAR(100),
    Total_Amount FLOAT,
    Payment_Status VARCHAR(25),
    Order_Status VARCHAR(25),
    CONSTRAINT Order_PK PRIMARY KEY (Order_ID),
    CONSTRAINT Customer_FK FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    CONSTRAINT Payment_Status_Check CHECK(Payment_Status IN ('Transaction Successful', 'Transaction Pending')),
    CONSTRAINT Order_Status_Check CHECK(Order_Status IN ('Order Placed', 'In Cart'))
);

GO



CREATE TABLE Shipping(
    Shipping_ID INT NOT NULL IDENTITY(1,1),
    Order_ID INT NOT NULL,
    Shipment_Date DATE,
    CONSTRAINT Shipping_PK PRIMARY KEY (Shipping_ID),
    CONSTRAINT Order_FK FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID)
);

CREATE TABLE Payment_Transaction (
    Transaction_ID INT NOT NULL IDENTITY(1,1),
    Order_ID INT NOT NULL,
    Payment_Date DATE DEFAULT GETDATE(),
    Payment_Method VARCHAR(255),
    Amount_Paid FLOAT,
    CONSTRAINT Payment_Transaction_PK PRIMARY KEY (Transaction_ID),
    CONSTRAINT Order_Payment_Transaction_FK FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID) 
);

CREATE TABLE Brand(
    Brand_ID INT NOT NULL IDENTITY(1,1),
    Brand_Name VARCHAR(50) NOT NULL,
    Brand_Website VARCHAR(100) NOT NULL,
    CONSTRAINT Brand_ID_PK PRIMARY KEY (Brand_ID)
);

CREATE TABLE Category(
    Category_ID INT NOT NULL IDENTITY(1,1),
    Category_Type VARCHAR(50) NOT NULL,
    CONSTRAINT Category_PK PRIMARY KEY (Category_ID)
);

CREATE TABLE Delivery (
    Delivery_ID INT NOT NULL IDENTITY(1,1),
    Order_ID INT NOT NULL,
    Carrier_Name VARCHAR(25),
    Tracking_Number VARCHAR(10) NOT NULL,
    Delivery_Date DATE,
    Delivery_Status VARCHAR(50),
    Delivery_Address VARCHAR(200),
    Delivery_Cost FLOAT,
    CONSTRAINT Delivery_PK PRIMARY KEY (Delivery_ID),
    CONSTRAINT Order_Delivery_FK FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID)
);



CREATE TABLE Shoe_Product(
    Product_ID INT NOT NULL IDENTITY(1,1),
    Product_Name VARCHAR(50) NOT NULL,
    Product_Description VARCHAR(200),
    Brand_ID INT NOT NULL,
    Category_ID INT NOT NULL,
    Price FLOAT NOT NULL,
    Availability_of_Product BIT DEFAULT 0,
    Sizes_Available FLOAT,
    Colors_Available VARCHAR(100),
    CONSTRAINT Product_PK PRIMARY KEY (Product_ID),
    CONSTRAINT Brand_FK FOREIGN KEY (Brand_ID) REFERENCES [Brand](Brand_ID),
    CONSTRAINT Availability_Check 
        CHECK (Availability_of_Product IN (0, 1)),
    CONSTRAINT Sizes_Available_Check 
        CHECK (Sizes_Available IN (9, 10, 11) OR Sizes_Available IS NULL),
    CONSTRAINT Colors_Available_Check 
        CHECK (Colors_Available IN ('BLACK', 'WHITE', 'GREY') OR Colors_Available IS NULL)
);



CREATE TABLE Review(
    Review_ID INT NOT NULL IDENTITY(1,1),
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Rating INT NOT NULL,
    Category_Type VARCHAR(50) NOT NULL,
    CONSTRAINT Customer_Review_FK FOREIGN KEY (Customer_ID) REFERENCES [Customer](Customer_ID),
    CONSTRAINT Shoe_Product_FK FOREIGN KEY (Product_ID) REFERENCES [Shoe_Product](Product_ID),
    CONSTRAINT Review_PK PRIMARY KEY (Review_ID)
);

CREATE TABLE Order_Line(
    OrderLine_ID INT NOT NULL IDENTITY(1,1),
    Product_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Quantity INT NOT NULL,
    CONSTRAINT Order_Order_Line_Delivery_FK FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID),
    CONSTRAINT Shoe_Product_Order_Line_FK FOREIGN KEY (Product_ID) REFERENCES [Shoe_Product](Product_ID),
    CONSTRAINT OrderLine_PK PRIMARY KEY (OrderLine_ID)
);



CREATE TABLE Supplier(
    Supplier_ID INT NOT NULL IDENTITY(1,1),
    Supplier_Name INT NOT NULL,
    Contact_Information INT NOT NULL,
    Quantity INT NOT NULL,
    CONSTRAINT  Supplier_PK PRIMARY KEY (Supplier_ID)
);
ALTER TABLE Supplier
ALTER COLUMN Supplier_Name VARCHAR(100) NOT NULL;
ALTER TABLE Supplier ALTER COLUMN Contact_Information VARCHAR(50) NOT NULL;



CREATE TABLE Inventory(
    Inventory_ID INT NOT NULL IDENTITY(1,1),
    Product_ID INT NOT NULL,
    Stock_Quantity INT NOT NULL,
    CONSTRAINT  Inventory_PK PRIMARY KEY (Inventory_ID),
    CONSTRAINT Shoe_Product_Inventory_FK FOREIGN KEY (Product_ID) REFERENCES [Shoe_Product](Product_ID),

);


CREATE TABLE ProductSupplyChain(
    SupplyChain_ID INT NOT NULL IDENTITY(1,1),
    Supplier_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Supply_Contract_Details VARCHAR(50) NOT NULL,
    CONSTRAINT Supplier_ProductSupplyChain_FK FOREIGN KEY (Supplier_ID) REFERENCES [Supplier](Supplier_ID),
    CONSTRAINT Shoe_Product_ProductSupplyChain_FK FOREIGN KEY (Product_ID) REFERENCES [Shoe_Product](Product_ID),
    CONSTRAINT OrderLine_ProductSupplyChain_PK PRIMARY KEY (SupplyChain_ID)
);



CREATE TABLE Stock_Item(
    Stock_Item_ID INT NOT NULL IDENTITY(1,1),
    Supplier_ID INT NOT NULL,
    Inventory_ID INT NOT NULL,
    Supply_Contract_Details VARCHAR(50) NOT NULL,
    CONSTRAINT Inventory_FK FOREIGN KEY (Inventory_ID) REFERENCES [Inventory](Inventory_ID),
    CONSTRAINT Supplier_Stock_Item_FK FOREIGN KEY (Supplier_ID) REFERENCES [Supplier](Supplier_ID),
    CONSTRAINT Stock_Item_ID_PK PRIMARY KEY (Stock_Item_ID)
);

CREATE TABLE MostSellingProductsAndBrands (
    Record_ID INT IDENTITY(1,1) PRIMARY KEY,
    Product_ID INT,
    Brand_ID INT,
    Quantity_Sold INT,
    Last_Update DATETIME DEFAULT GETDATE()
);
