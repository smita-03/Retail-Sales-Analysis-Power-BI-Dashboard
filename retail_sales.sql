CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE sales (
    transaction_id INT,
    date DATE,
    customer_id VARCHAR(20),
    gender VARCHAR(20),
    age INT,
    product_category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    total_amount DECIMAL(10,2)
);