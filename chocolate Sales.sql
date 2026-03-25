SELECT * FROM chocolate_sales;

-- Rename columns

ALTER TABLE chocolate_sales
RENAME COLUMN `Sales Person` to sales_person,
RENAME COLUMN `Month Number` to month_number,
RENAME COLUMN `Boxes Shipped` to boxes_shipped,
RENAME COLUMN `Revenue per Box` to revenue_per_box;




-- Total Sales

SELECT SUM(Amount_Clean) AS total_sales
FROM chocolate_sales;


-- Total Orders
SELECT count(*) AS total_orders
FROM chocolate_sales;



-- Total Boxes Shipped

SELECT SUM(boxes_shipped) AS total_box
FROM chocolate_sales;

-- Sales by Country

SELECT * FROM chocolate_sales;

SELECT Country,
	sum(Amount_Clean) as total_Sales
 FROM chocolate_sales
 group by Country
 order by total_Sales DESC;




-- Sales by Product
SELECT Product,
	sum(Amount_Clean) as total_Sales
 FROM chocolate_sales
 group by Product
 order by total_Sales DESC
 limit 10;

-- Sales by Sales Person

SELECT sales_person,
	sum(Amount_Clean) as total_Sales
 FROM chocolate_sales
 group by sales_person
 order by total_Sales DESC
 limit 10;



-- Average Revenue per Box
SELECT round(avg(revenue_per_box),2) as Avg_Revenue_per_Box 
FROM chocolate_sales;


-- Boxes shipped by Product
SELECT Product,
	sum(boxes_shipped) as total_Sales
 FROM chocolate_sales
 group by Product
 order by total_Sales DESC
 limit 10;

-- Sales by Country and Product
SELECT Country,
	Product,
	sum(Amount_Clean) as total_Sales
 FROM chocolate_sales
 group by Country,Product
 order by total_Sales DESC;


