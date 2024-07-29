SELECT * FROM OnlineSalesData;

-- Data Cleaning and Column Type Changes
-- Check for missing values in key columns
SELECT 
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS MissingTotalRevenue,
    SUM(CASE WHEN Units_Sold IS NULL THEN 1 ELSE 0 END) AS MissingUnitsSold,
    SUM(CASE WHEN Unit_Price IS NULL THEN 1 ELSE 0 END) AS MissingUnitPrice
FROM OnlineSalesData;

-- Remove duplicate records
DELETE FROM OnlineSalesData
WHERE Transaction_ID IN (
    SELECT 
        Transaction_ID
    FROM (
        SELECT 
            Transaction_ID,
            ROW_NUMBER() OVER (PARTITION BY Date, Product_Name, Region, Total_Revenue ORDER BY Transaction_ID) AS rn
        FROM 
            OnlineSalesData
    ) t
    WHERE 
        t.rn > 1
);

DESC onlinesalesdata; -- View Column Types
-- Change column types
ALTER TABLE OnlineSalesData
MODIFY Total_Revenue DECIMAL(10, 2);

UPDATE OnlineSalesData -- -- Convert and modify Date column type
SET Date = STR_TO_DATE(Date, '%m/%d/%Y');

ALTER TABLE OnlineSalesData
MODIFY Date DATE;

ALTER TABLE OnlineSalesData
MODIFY Units_Sold INT;

ALTER TABLE OnlineSalesData
MODIFY Unit_Price DECIMAL(10, 2);

ALTER TABLE OnlineSalesData
MODIFY Region VARCHAR(50) NOT NULL;

-- Analysis and Findings
-- Calculate total revenue and units sold
SELECT 
    SUM(Total_Revenue) AS TotalRevenue,
    SUM(Units_Sold) AS TotalUnitsSold
FROM OnlineSalesData;

-- Revenue by region
SELECT 
    Region,
    SUM(Total_Revenue) AS TotalRevenue
FROM OnlineSalesData
GROUP BY Region;

-- Top 10 products by revenue
SELECT 
    Product_Name,
    SUM(Total_Revenue) AS TotalRevenue
FROM OnlineSalesData
GROUP BY Product_Name
ORDER BY TotalRevenue DESC
LIMIT 10;

-- Monthly revenue trend
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    SUM(Total_Revenue) AS TotalRevenue
FROM OnlineSalesData
GROUP BY Year, Month
ORDER BY Year, Month;

-- Revenue by payment method
SELECT 
    Payment_Method,
    SUM(Total_Revenue) AS TotalRevenue
FROM OnlineSalesData
GROUP BY Payment_Method;

-- Gross revenue for each product
SELECT 
    Product_Name,
    SUM(Total_Revenue) AS GrossRevenue
FROM OnlineSalesData
GROUP BY Product_Name;

-- Top 3 product categories by revenue
SELECT 
    Product_Category,
    SUM(Total_Revenue) AS TotalRevenue
FROM OnlineSalesData
GROUP BY Product_Category
ORDER BY TotalRevenue DESC
LIMIT 3;
