--------non-clustered index on the "Product_Name" column in the "Shoe_Product"table------------------------------------------------------------------------------

select * from Shoe_Product

-- drop index NIX_ProductName on Shoe_Product

-- Create a nonclustered index on the column ProductName

CREATE NONCLUSTERED INDEX NIX_ProductName ON [marketplace].[dbo].[Shoe_Product] ([Product_Name] DESC) /*Change sort order as needed*/
GO

EXEC sp_helpindex 'dbo.Shoe_Product'

--------------- NON-CLUSTERED INDEX ON "CUSTOMER_NAME" column in the Customer Table---------------
SELECT * FROM Customer

-- drop index NIX_Username on Customer

-- Create a nonclustered index on the column Username

CREATE NONCLUSTERED INDEX NIX_Username ON [marketplace].[dbo].[Customer] (Username DESC);

EXEC sp_helpindex 'dbo.Customer';

--------------- NON-CLUSTERED INDEX ON "Supplier_Name" column in the Supplier Table---------------

SELECT * FROM Supplier;

-- Create a nonclustered index on the column Supplier Name

CREATE NONCLUSTERED INDEX NIX_Supplier_Name ON [marketplace].[dbo].[Supplier] ([Supplier_Name] DESC) /*Change sort order as needed*/
GO

-- drop index NIX_Supplier_Name] on Supplier

EXEC sp_helpindex 'dbo.Supplier';

--------------- NON-CLUSTERED INDEX ON "Order_Status" column in the Order Table---------------
SELECT * from [Order];

-- Create a nonclustered index on the column Order Status

CREATE NONCLUSTERED INDEX NIX_Order_Status ON [marketplace].[dbo].[Order] ([Order_Status] DESC) /*Change sort order as needed*/
GO

EXEC sp_helpindex 'dbo.Order';

--DROP INDEX [NIX_OrderStatus] ON [dbo].[Order]


--------------- NON-CLUSTERED INDEX ON "Delivery_Status" column in the Delivery Table---------------
SELECT * from Delivery;

-- Create a nonclustered index on the column Delivery Status

CREATE NONCLUSTERED INDEX NIX_DeliveryStatus ON [marketplace].[dbo].[Delivery] ([Delivery_Status] DESC) /*Change sort order as needed*/
GO
--DROP INDEX NIX_DeliveryStatus ON dbo.Delivery

EXEC sp_helpindex 'dbo.Delivery';
