USE ecommerce_analysis;
SELECT DATABASE();
CREATE TABLE orders (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Region VARCHAR(20),
    Category VARCHAR(30),
    Sub_Category VARCHAR(30),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);
SHOW TABLES;
SELECT COUNT(*) FROM orders;
SELECT * FROM orders LIMIT 5;
SELECT 
    Discount,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM orders
GROUP BY Discount
ORDER BY Discount;
SELECT 
    Category,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM orders
GROUP BY Category
ORDER BY total_profit DESC;
SELECT 
    Region,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS profit_margin
FROM orders
GROUP BY Region
ORDER BY total_profit DESC;
SELECT 
    Sub_Category,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM orders
GROUP BY Sub_Category
ORDER BY total_profit ASC;
SELECT 
    Region,
    Discount,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS profit_margin
FROM orders
GROUP BY Region, Discount
ORDER BY Region, Discount;
SELECT 1;