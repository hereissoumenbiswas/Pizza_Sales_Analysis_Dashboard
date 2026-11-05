# Pizza_Sales_Analysis_Dashboard
An end-to-end data analytics project that turns raw pizza order data into an interactive Excel dashboard, using SQL for the key numbers and Excel + Power Query for cleaning and visualization.

[Pizza Sales Dashboard](https://github.com/hereissoumenbiswas/Pizza_Sales_Analysis_Dashboard/blob/main/dashboard/Pizza_Sales_Analysis_Dashboard.png)

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

## 🔍 Key Insights

**1. Overall performance**
- Total revenue is **$817,860** from **21,350 orders** and **49,574 pizzas**.
- The average order is worth **$38.31** and contains **2.32 pizzas**.

**2. Busiest days**
- **Friday is the busiest day** with 3,538 orders. Sunday is the slowest with 2,624, so Friday has about 35% more orders.
- Weekends are not the peak. Saturday and Sunday together make only about 27% of orders.

**3. Busiest hours**
- There are two clear rushes: **12 pm to 2 pm** (4,975 orders, about 23%) and **4 pm to 8 pm** (8,664 orders, about 41%).
- Together they bring about **64% of all orders**. The evening rush is the biggest.
- Orders are very low early in the morning and late at night.

**4. Category**
- **Classic** is the leader in both pizzas sold (14,888) and share of sales (26.91%).
- Chicken sells the fewest pizzas (11,050), but its share of sales (23.96%) is slightly higher than Veggie's (23.68%). This means Chicken pizzas have a higher price per pizza.

**5. Size**
- **Large** gives the biggest share of sales (45.89%). Large and Medium together give about **76%**.
- XL and XXL together give less than **2%**.

**6. Best and worst sellers**
- The top 5 are very close. The Classic Deluxe Pizza is first with 2,453 pizzas and the 5th has 2,371, a gap of only about 3%.
- **The Brie Carre Pizza is the weakest** with only 490 pizzas, about half of the next lowest (934).

---

## 💡 Business Recommendations

1. **Staff more people on Fridays and during the two rush windows.** Fast service in these hours protects the most orders.
2. **Run offers on Sundays and Mondays** (combo deals, discounts). These are the slowest days, so they have the most room to grow.
3. **Offer deals in the quieter hours,** such as the afternoon dip between the two rushes (2 pm to 4 pm) and late evening.
4. **Focus stock and promotions on Large and Medium sizes.** Consider simplifying XL and XXL, since they barely sell.
5. **Increase pizzas per order** (now 2.32) with "buy 2, get a discount" or family combos.
6. **Review the Brie Carre Pizza before deciding.** First check its revenue and whether it was on the menu all year. If it is a true low performer, reprice it, bundle it or remove it.

---

## ⚠️ Limitations

- The data covers **one year (2015)**, so these patterns show that year only.
- The best and worst seller charts use **quantity, not revenue**.

  ---

## 👤 Author

**Soumen Biswas**
Data Science Graduate | Aspiring Data Analyst

- LinkedIn: [(https://www.linkedin.com/in/hereissoumenbiswas)]
- GitHub: [(https://github.com/hereissoumenbiswas)]

