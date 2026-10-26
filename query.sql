CREATE VIEW category_revenue AS
SELECT
    product_category,
    SUM(total_amount) AS Revenue
FROM sales
GROUP BY product_category;
SELECT * FROM category_revenue;

CREATE VIEW gender_revenue AS
SELECT
    gender,
    SUM(total_amount) AS Revenue
FROM sales
GROUP BY gender;
SELECT * FROM gender_revenue;

CREATE VIEW sales_summary AS
SELECT
    COUNT(*) AS Total_Orders,
    SUM(total_amount) AS Total_Revenue,
    SUM(quantity) AS Total_Quantity,
    AVG(total_amount) AS Avg_Order_Value
FROM sales;
SELECT * FROM sales_summary;

CREATE VIEW top_products AS
SELECT
    product_category,
    SUM(quantity) AS Quantity_Sold
FROM sales
GROUP BY product_category
ORDER BY Quantity_Sold DESC;
SELECT * FROM top_products;