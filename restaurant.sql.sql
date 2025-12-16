use restaurant_db;

-- Objective 1 : Explore the Items Table 
-- 1. view the menu_items table and
SELECT *
FROM restaurant_db.menu_items;

-- 2. write a query to find the number of items on the menu.
SELECT count(*) as total_items 
FROM restaurant_db.menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * 
FROM restaurant_db.menu_items
ORDER BY price;

SELECT * 
FROM restaurant_db.menu_items
ORDER BY price DESC;

-- 4. How Many Italian Dishes are on the menu ? 
SELECT count(*) as Total_Italian_dishes
FROM restaurant_db.menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu ?
SELECT *
FROM restaurant_db.menu_items
WHERE category = 'Italian'
ORDER BY price ;

SELECT *
FROM restaurant_db.menu_items
WHERE category = 'Italian'
ORDER BY price DESC ;

-- 6. How many dishes are in each category ? 
SELECT category,count(item_name) as Total_dishes
FROM restaurant_db.menu_items
group by category;

-- 7. What is the average dish price within each category ?
SELECT category,avg(price) as Average_price
FROM restaurant_db.menu_items
GROUP BY category;

-- OBJECTIVE 2 : EXPLORE THE ORDERS TABLE 

-- 1. VIEW THE order_details table.
SELECT *
FROM restaurant_db.order_details;


-- 2. What is the date range of the table ?
SELECT min(order_date),max(order_date) 
FROM restaurant_db.order_details;



-- 3. How many orders were made within this date range ? 
SELECT count( distinct order_id) as total_orders
FROM restaurant_db.order_details;


-- 4. How many items were ordered within this date range?
SELECT count(*) as Total_items
FROM restaurant_db.order_details;

-- 5. Which orders had the most number of items?
SELECT order_id,count(item_id) as Total_items
FROM restaurant_db.order_details
GROUP BY order_id
ORDER BY Total_items DESC ;

-- 6. How many orders had more than 12 items ?
SELECT COUNT(*) as Total_Orders FROM

	(SELECT order_id,count(item_id) as Total_items
	FROM restaurant_db.order_details
	GROUP BY order_id
	Having count(item_id) > 12) as num_orders;
    
-- OBJECTIVE 3 : Analyze Customer Behavior
-- 1. Combine the menu_items and order_details tables into a single table.
SELECT *
FROM restaurant_db.order_details as o LEFT JOIN restaurant_db.menu_items as m on o.item_id = m.menu_item_id;

-- 2. What were the least and most ordered items ? What Categories were they in ?
SELECT item_name,category,count(order_details_id) as total_orders
FROM restaurant_db.order_details as o LEFT JOIN restaurant_db.menu_items as m on o.item_id = m.menu_item_id
GROUP BY item_name,category
ORDER BY total_orders DESC;

-- 3. What were the top 5 orders that spent the most money?
SELECT order_id,sum(price) as Total_spend
FROM restaurant_db.order_details as o LEFT JOIN restaurant_db.menu_items as m on o.item_id = m.menu_item_id
GROUP BY order_id
ORDER BY Total_spend DESC
LIMIT 5 ;

-- 4. View the details of the highest spend order. What insights can you gather from the results?
SELECT category,count(item_id) as num_items
FROM restaurant_db.order_details as o LEFT JOIN restaurant_db.menu_items as m on o.item_id = m.menu_item_id
WHERE order_id = 440
GROUP BY category ;

-- 5. 
-- BONUS: View the details of the Top 5 highest spend orders.What insights can you gather from the results?

SELECT category,count(item_id) as num_items
FROM restaurant_db.order_details as o LEFT JOIN restaurant_db.menu_items as m on o.item_id = m.menu_item_id
WHERE order_id in (440,2075,1957,330,2675)
GROUP BY category ;











