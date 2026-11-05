drop table if exists pizza_sales;

-- Create table

CREATE TABLE pizza_sales (
    pizza_id INTEGER,
    order_id INTEGER,
    pizza_name_id VARCHAR(50),
    quantity INTEGER,
    order_date DATE,
    order_time TIME,
    unit_price NUMERIC(10,2),
    total_price NUMERIC(10,2),
    pizza_size VARCHAR(10),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100)
);


-- The CSV file uses the DD-MM-YYYY date format, but PostgreSQL was interpreting dates using a different format.
-- That is why, run this query first then import the csv file

SET DateStyle TO 'ISO, DMY';

-- Import data

COPY pizza_sales
FROM 'D:\SQL+Excel_Project\dataset\pizza_sales_data.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE,
    DELIMITER ','
);

-- Check the data
select count(*) from pizza_sales;

-- Explore the table columns
select * from information_schema.columns
where table_schema = 'public' and table_name = 'pizza_sales';























