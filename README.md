# Pizza_Sales_Analysis_Dashboard
An end-to-end data analytics project that turns raw pizza order data into an interactive Excel dashboard, using SQL for the key numbers and Excel + Power Query for cleaning and visualization.

[Pizza Sales Dashboard](https://github.com/hereissoumenbiswas/Pizza_Sales_Analysis_Dashboard/blob/main/dashboard/Pizza_Sales_Analysis_Dashboard.png)

---

## 📌 Project Overview

A pizza restaurant records every order, but raw rows do not tell the owner what to do next. This project answers simple business questions:

- How much revenue did we make, and from how many orders?
- Which days and hours are the busiest?
- Which pizza categories and sizes sell the most?
- Which pizzas are best sellers, and which are the weakest?

The result is a one-page dashboard that a manager can read in a few seconds.

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| SQL | Import the CSV with a query, and calculate all KPIs |
| Excel | Data processing, charts, dashboard |
| Power Query | Data cleaning |
| Slicer and Timeline | Interactive filtering by day and period |

---

## 📊 Dashboard Contents

- **KPI cards:** Total Revenue, Average Order Value, Total Pizzas Sold, Total Orders, Average Pizzas per Order
- **Daily trend** (bar chart) and **Hourly trend** (line chart)
- **% of sales by category** (donut chart) and **% of sales by size** (pie chart)
- **Total pizzas sold by category** (funnel chart)
- **Top 5 best sellers** and **Bottom 5 worst sellers** (bar charts)
- **Timeline and day slicer** for interactive filtering

---

## 🔄 Project Workflow

### Data Preparation (SQL)

1. **Import the CSV file into SQL using a query and the file location** (not the import/export wizard).
   *Why:* the import is written as code, so it can be repeated at any time with the same result, and I control the column data types.
2. **Query all KPIs and required numbers in SQL.**
   *Why:* SQL gives me trusted numbers to compare against the Excel dashboard later.
3. **Load the data into Excel.**
   *Why:* Excel is where I build the charts, slicers and the final dashboard.

### Data Cleaning

4. **Replace abbreviated sizes with full names in Power Query** (e.g. M → Medium, S → Small).
   *Why:* full names are easier to read in charts and legends. Power Query saves this as a step, so it re-applies automatically when data is refreshed.

### Data Processing

5. **Extract the month from `order_date`:** `=TEXT([@[order_date]], "mmmm")`
   *Why:* needed for monthly analysis and for grouping in the timeline.
6. **Extract the day name from `order_date`:** `=TEXT([@[order_date]], "dddd")`
   *Why:* shows which days of the week are strong or weak, and powers the day slicer.
7. **Extract the hour from `order_time`:** `=TEXT([@[order_time]], "h")`
   *Why:* shows the busiest hours of the day, which helps with staffing and promotions.

### Dashboard Building

8. **Create all KPIs in Excel and place them on the dashboard.** Managers see the big numbers first.
9. **Bar chart for daily trend.** Compares the days of the week.
10. **Line chart for hourly trend.** A line shows the rise and fall of orders through the day.
11. **Donut chart for % share by pizza category.** Shows each category's contribution to sales.
12. **Pie chart for % share by pizza size.** Shows which size customers prefer.
13. **Funnel chart for total pizzas sold by category.** Ranks categories from highest to lowest quantity.
14. **Bar chart for top 5 best sellers by quantity.** These are the products to protect.
15. **Bar chart for bottom 5 worst sellers by quantity.** These are the products to review.
16. **Add the timeline and slicer.** One dashboard can then answer many questions.

---
