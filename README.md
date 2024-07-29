# Online_Sales_Data_Analysis
Online Sales Data Analysis and Dashboard 
- A new Power BI Dashboard was developed to analyze the sample Online Sales Dataset.
- Data Cleaning and Analysis – MySQL
- Data Visualization – Power BI

Case Overview
The Online Sales Data set provides a comprehensive view of the sales performance of various products across different regions and time periods. This analysis aims to uncover key insights into the products' sales trends, revenue generation, and regional performance. By leveraging SQL for data analysis and Power BI for visualization, we can provide a detailed and intuitive understanding of the sales dynamics and support strategic decision-making for the business.

Data Cleaning Process
Before diving into the analysis, ensuring the data was clean and properly formatted was crucial. The following steps were taken to clean the data and change column types where necessary:
1. Checking for Missing Values: Identified any columns with missing values and addressed them appropriately, either by imputing missing values or removing incomplete records.
2. Removing Duplicates: Ensured no duplicate records could skew the analysis.
3. Changing Column Types: Modified column types to ensure data consistency and accuracy.
•	Changing Total_Revenue from VARCHAR to DECIMAL
•	Changing the Date from VARCHAR to DATE
•	Changing Units_Sold from VARCHAR to INT
•	Changing Unit_Price from VARCHAR to DECIMAL
•	Changing Region to VARCHAR(50) with NOT NULL constraint

Analysis and Key Highlights
1. Total Revenue and Units Sold
The total revenue and units sold provide a high-level view of the overall sales performance of the business.
Finding: The total revenue amounted to $80.57K, and the total units sold were 518.
2. Revenue by Region
Analyzing revenue by region helps identify geographical areas with the highest and lowest sales performance.
Finding: The region with the highest revenue was Region North America, contributing $37K in sales, while Region Europe had the lowest revenue with $21K.
3. Top 10 Products by Revenue
Identifying the top-selling products can inform inventory and marketing strategies.
Finding: The top-selling product was Product Canon EOS R5 Camera, with a total revenue of $3.9K, followed by Product LG OLED TV and Product MacBook Pro 16-inch.
4. Top 3 Product Categories by Revenue
Identifying the top product categories can help focus marketing efforts and product development.
Finding: The top product categories were Category Electronics, Category Home Appliance, and Category Sports, with total revenues of $35K, $19K, and $14K respectively.
5. Monthly Revenue Trend
Understanding the revenue trend over time can reveal seasonal patterns and inform forecasting.
Finding: Revenue peaked in January, likely due to seasonal demand or marketing campaigns, while July saw the lowest revenue.
6. Revenue by Payment Method
Analyzing revenue by payment method can provide insights into customer preferences and the effectiveness of different payment options.
Finding: The most popular payment method was Credit Card, contributing $51.17K in revenue, while Debit Card was the least popular with $8.13K in revenue.

Challenges Faced
During the analysis, several challenges were encountered:
•	Data Cleaning: Ensuring the data was clean and free from duplicates required meticulous attention and multiple iterations of validation.
•	Column Type Changes: Modifying column types was necessary to ensure data consistency, which involved careful planning and execution to avoid data loss.
•	Complex Queries: Some analysis required complex SQL queries, especially when calculating metrics like revenue trends and product performance.

Visualizations
Using Power BI, the following visualizations were created to present the findings:
1.	Total Revenue and Units Sold: A card visualization.
2.	Revenue by Region: A clustered column chart is used, also map visualization can be used.
3.	Top 10 Products by Revenue: A clustered bar chart visualization.
4.	Top 3 Product Categories by Revenue: A clustered bar chart visualization.
5.	Monthly Revenue Trend: A line chart visualization.
6.	Revenue by Payment Method: A pie chart is used. Also, a clustered bar chart can be used to visualize different payment methods.
7.	Units Sold by Product Category: A pie chart visualization.
8.	Units Sold by Payment Method: A clustered bar chart visualization.
9.	Total Units Sold and Total Revenue by Product Category: A-line and clustered column chart visualization.
10.	Gross Revenue by Product: A table visualization.
