CREATE VIEW Top5Customers AS
SELECT TOP 5 c.Customer_ID, c.First_Name, c.Last_Name, SUM(o.Total_Amount) AS Total_Spending
FROM Customer c
JOIN [Order] o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
ORDER BY Total_Spending DESC;
-- Select from the view to see the top 5 customers
SELECT * FROM Customer;
