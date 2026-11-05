-- KPI's

-- Q1. Find the total revenue

select
	sum(total_price) as total_revenue
from pizza_sales;

-- Q2. Average Order Value
select
	round(sum(total_price)/count(distinct order_id), 2) as average_order_value
from pizza_sales

-- Q3. Total Pizzas Sold
select
	sum(quantity) as total_pizza_sold
from pizza_sales;

-- Q4. Total Orders
select
	count(distinct order_id) as total_orders
from pizza_sales;

-- Q5. Average Pizzas Per Order
select
	round(cast(sum(quantity) as decimal(10,2)) / count(distinct order_id), 2) as Average_pizzas_per_order
from pizza_sales;



-- CHARTS REQUIREMENT

-- 1. Daily Trend for Total Orders:

select
	to_char(order_date, 'FMDay') as day_is,
	count(distinct order_id) as total_orders
from pizza_sales
group by 
to_char(order_date, 'FMDay'),
extract(isodow from order_date)
order by extract(isodow from order_date);

-- 2. Hourly Trend for Total Orders:

select
	extract(hour from order_time) as hour_is,
	count(distinct order_id) as total_orders
from pizza_sales
group by extract(hour from order_time)
order by extract(hour from order_time);

-- 3. Percentage of Sales by Pizza Category

select
	pizza_category,
	sum(total_price) as total_sales,
	round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales), 2) as percentage_share
from pizza_sales
group by pizza_category;

-- 4. Percentage of Sales by Pizza Size

select
	pizza_size,
	sum(total_price) as total_sales,
	round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales), 2) as percentage_of_sales_by_size
from pizza_sales
group by pizza_size
order by percentage_of_sales_by_size desc;

-- 5. Total Pizzas Sold by Pizza Category

select
	pizza_category,
	sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_category;

-- 6. Top 5 Best Sellers by Total Pizzas Sold

select
	pizza_name,
	sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_name
order by total_pizza_sold desc
limit 5;

-- 7. Bottom 5 Worst Sellers by Total Pizzas Sold

select
	pizza_name,
	sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_name
order by total_pizza_sold asc
limit 5;


















