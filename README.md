# 📊 Real Estate Sales & Investment Analytics Dashboard

## 1. Project Title / Headline

**Real Estate Sales & Investment Analytics Dashboard**

An end-to-end business intelligence project built using SQL and Power BI to analyze property sales, inventory distribution, customer behavior, and investment opportunities. The project leverages relational database design, SQL analytics, and interactive dashboards to transform raw real estate data into actionable business insights.

---

## 2. Short Description / Purpose

The Real Estate Sales & Investment Analytics Dashboard is a comprehensive analytics solution designed to help real estate businesses, investors, and analysts understand property sales performance, inventory allocation, customer trends, and investment opportunities.

The project combines SQL database management with interactive Power BI dashboards to support data-driven decision-making and improve operational efficiency.

---

## 3. Tech Stack

The project was built using the following tools and technologies:

* 🗄️ **MySQL** – Database creation, relationship management, and analytical querying.
* 📊 **Power BI Desktop** – Interactive dashboard development and business reporting.
* 📂 **Power Query** – Data transformation and preparation.
* 🧠 **DAX (Data Analysis Expressions)** – KPI calculations and dynamic reporting.
* 🔗 **Data Modeling** – Primary Key and Foreign Key relationships established across tables.
* 📈 **Interactive Visualizations** – KPI Cards, Bar Charts, Trend Analysis, Customer Insights, and Inventory Reports.
* 📁 **CSV Datasets** – Source data imported into MySQL and Power BI.

---

## 4. Data Source

The project utilizes a retail-style real estate dataset consisting of multiple related tables:

* Customers
* Orders
* Order Items
* Products
* Categories
* Stores
* Stocks
* Staff

The data was imported into MySQL, cleaned, modeled using relationships, and analyzed through SQL queries before being visualized in Power BI.

---

## 5. Features / Highlights

### • Business Problem

Real estate and property management businesses often struggle to monitor sales performance, inventory availability, customer purchasing behavior, and operational efficiency across multiple locations.

Key business questions include:

* Which property categories generate the highest revenue?
* Which locations perform best in terms of sales?
* Which products require inventory replenishment?
* Who are the most valuable repeat customers?
* How effectively are staff and stores performing?

Without a centralized reporting system, answering these questions can be difficult and time-consuming.

---

### • Goal of the Dashboard

To build an interactive analytics solution that:

* Tracks sales performance across locations.
* Monitors inventory levels and stock distribution.
* Identifies repeat customers and purchasing trends.
* Evaluates store and staff performance.
* Supports business growth through data-driven insights.

---

### • Walkthrough of Key Visuals

### Dashboard 1: Sales Analysis Dashboard

#### KPI Summary Cards

Provides an overview of:

* Total Sales
* Total Orders
* Total Customers

Allowing stakeholders to monitor business performance instantly.

---

#### Monthly Sales Trend

(Line Chart)

Tracks sales performance over time and highlights:

* Revenue growth patterns
* Seasonal trends
* Demand fluctuations

---

#### Sales by Category

(Bar Chart)

Compares revenue generated across property categories and identifies top-performing segments.

---

#### Top Selling Products

(Bar Chart)

Ranks products based on sales volume and customer demand.

---

#### Store Performance Analysis

(Donut Chart)

Shows the contribution of different stores to overall sales performance.

---

### Dashboard 2: Inventory Analysis Dashboard

#### Inventory KPI Cards

Displays:

* Total Inventory
* Total Products
* Total Stores

Providing a snapshot of inventory health.

---

#### Inventory by Store

(Bar Chart)

Compares stock availability across store locations.

---

#### Inventory by Category

(Donut Chart)

Shows inventory allocation across product categories.

---

#### Low Stock Products

(Table Visual)

Identifies products that require immediate replenishment.

---

#### Top Stocked Products

(Bar Chart)

Highlights products with the highest inventory levels.

---

### Dashboard 3: Customer & Staff Analysis Dashboard

#### Repeat Customer Analysis

(Table Visual)

Identifies loyal customers based on order frequency.

---

#### Customer Order Distribution

(Bar Chart)

Shows customer activity across cities and regions.

---

#### Staff Performance Analysis

(Bar Chart)

Evaluates employee performance based on orders handled.

---

## • Business Impact & Insights

### High-Performing Categories Drive Revenue

A small number of categories generated a significant share of total revenue, helping management focus on high-performing segments.

---

### Inventory Distribution Requires Optimization

Inventory levels varied significantly across stores, highlighting opportunities for better stock balancing and replenishment planning.

---

### Repeat Customers Contribute Strongly to Sales

Several customers placed multiple orders, indicating customer loyalty and retention opportunities.

---

### Store Performance Differs Across Locations

Certain stores consistently outperformed others, suggesting differences in customer demand and operational efficiency.

---

### Low Stock Products Require Attention

Inventory analysis identified products approaching critical stock levels, helping prevent potential sales losses.

---

### Staff Productivity Varies

Order handling performance differed among employees, providing opportunities for performance monitoring and operational improvements.

---

## 6. Database Design & Relationships

A relational database was created in MySQL using:

* Primary Keys
* Foreign Keys
* One-to-Many Relationships

Key relationships established:

* Customers → Orders
* Orders → Order Items
* Products → Order Items
* Categories → Products
* Stores → Stocks
* Staff → Orders

This structure enabled efficient querying, aggregation, and reporting across multiple business dimensions.

---

## 7. Dashboard Preview

### SQL Database Relationship Model

The database schema was designed using relational modeling techniques with Primary Keys and Foreign Keys to ensure data integrity and support business analytics.

---
### SQL Relationship Table
![SQL Relationship Table](https://github.com/nikil101/Real-Estate-project/blob/main/Screenshot%202026-05-22%20214040.png)

### Power BI Dashboard

![Power BI Dashboard](https://github.com/nikil101/Real-Estate-project/blob/main/Screenshot%202026-05-22%20213934.png)
---

## 8. Key Takeaways

* SQL relationships improve data consistency and reporting accuracy.
* Interactive dashboards enable faster business decision-making.
* Inventory monitoring helps reduce stock shortages.
* Customer analytics reveal retention opportunities.
* Sales trend analysis supports strategic planning.
* Data-driven insights improve operational efficiency.

---

## 9. Future Improvements

* Real-time database integration
* Automated inventory alerts
* Predictive sales forecasting
* Customer segmentation models
* Property investment recommendation engine
* Geographic sales analysis

---

## 10. Conclusion

The Real Estate Sales & Investment Analytics Dashboard successfully combines SQL database management and Power BI visualization to transform raw business data into actionable insights. By analyzing sales performance, inventory distribution, customer behavior, and operational efficiency, the project enables smarter business decisions and demonstrates strong capabilities in SQL, data modeling, and business intelligence.
