# 📊 Instacart Data Warehouse & Business Intelligence Project

This repository contains the **Data Warehousing and Business Intelligence (DWBI) project** developed as part of the **3rd-year DWBI module (IT3021)**. The project demonstrates the end-to-end process of building a data warehouse, implementing ETL pipelines, deploying OLAP cubes, and creating business intelligence dashboards for analytical decision-making.

---

## 🚀 Project Overview
The project focuses on building a BI solution using the **Instacart Market Basket Dataset** from Kaggle, extended with additional datasets (ratings and customer profiles). The main goal is to provide an optimized data warehouse architecture and enable meaningful insights into customer purchasing patterns, product trends, and operational performance.

### Key Components:
1. **Data Warehouse Design**
   - Implemented using **Snowflake Schema**.
   - Fact and dimension tables: `FactOrder`, `DimCustomer`, `DimProduct`, `DimAisle`, `DimDepartment`, `DimDate`, `DimRating`.
   - Includes **Slowly Changing Dimensions (SCD)** for tracking historical customer and rating changes.

2. **ETL Development (SSIS)**
   - Extracts data from multiple sources (`Excel`, `CSV`, `TXT`, `SQL Database`).
   - Stages data before transforming and loading into the warehouse.
   - Implements lookups, derived columns, and transformations to maintain data integrity.

3. **OLAP Cube (SSAS)**
   - Cube built on top of the data warehouse.
   - Supports **hierarchies**, **drill-down**, and **roll-up** operations.
   - **KPIs** such as:
     - `Late Processing Alert` – highlights transactions with high processing time.
     - `High Discount Alert` – monitors profitability risks due to excessive discounts.

4. **OLAP Operations Demonstrated**
   - **Roll-up** – aggregating sales at department level.
   - **Drill-down** – analyzing sales by year → month → date.
   - **Slice & Dice** – focusing on customer demographics, product categories, and departments.
   - **Pivot** – rotating cube views for better comparisons.

5. **Power BI Dashboards**
   - Matrix visualization of customer profiles.
   - Drill-down reports (Country → City → Street).
   - Drill-through reports with product-level details.
   - Interactive slicers and filters for departments, aisles, and demographics.
   - Visualizations: bar charts, line charts, donut charts, and maps.

---

## 🛠️ Technologies & Tools
- **SQL Server** – Data warehouse implementation.
- **SSIS (SQL Server Integration Services)** – ETL pipelines.
- **SSAS (SQL Server Analysis Services)** – OLAP cube creation.
- **Power BI** – Business intelligence reporting.
- **Kaggle Instacart Dataset** – Source dataset.

---
