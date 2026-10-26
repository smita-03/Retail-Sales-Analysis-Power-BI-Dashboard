USE retail_sales;

SELECT COUNT(*) AS Total_Records
FROM sales;
SELECT SUM(total_amount) AS Total_Revenue
FROM sales;
SELECT COUNT(transaction_id) AS Total_Orders
FROM sales;
SELECT
product_category,
SUM(total_amount) AS Revenue
FROM sales
GROUP BY product_category;
SELECT
gender,
SUM(total_amount) AS Revenue
FROM sales
GROUP BY gender;
SELECT
product_category,
SUM(quantity) AS Quantity_Sold
FROM sales
GROUP BY product_category
ORDER BY Quantity_Sold DESC;
SELECT
AVG(total_amount) AS Average_Order_Value
FROM sales;
SELECT * FROM sales LIMIT 10;