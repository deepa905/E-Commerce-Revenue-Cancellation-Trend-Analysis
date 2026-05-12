# E-Commerce Revenue & Cancellation Trend Analysis

## Project Overview
This project analyses e-commerce transaction data using SQL and business reporting techniques to identify revenue trends, customer purchasing behaviour, and operational issues affecting sales performance. The objective was to uncover insights related to revenue concentration, product performance, and order cancellations to support data-driven business decision-making.

The analysis focuses on KPI reporting, trend analysis, and category-level performance evaluation using SQL and Google BigQuery.

---

# Project Highlights
- Analysed $2.7M in e-commerce transaction data
- Built SQL queries to calculate revenue and operational KPIs
- Identified an average order value of approximately $86
- Analysed product-level and category-level sales performance
- Investigated cancellation trends across customer transactions
- Used SQL window functions for ranking and comparative analysis

---

# Business Problem
An e-commerce business wants to better understand:

- Which product categories generate the highest revenue
- Which products underperform within their categories
- How cancellation rates affect operational performance
- Which periods contribute most to revenue generation
- How customer purchasing patterns vary across categories

The goal of the analysis is to support revenue optimisation, inventory planning, and operational decision-making.

---

# Dataset Overview

The dataset contains e-commerce transaction-level information, including:

- Order ID
- Product Category
- Product Name
- Order Value
- Customer Information
- Geographic Data
- Order Status
- Cancellation Information
- Transaction Date

---

# Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL | KPI analysis and business reporting |
| Google BigQuery | Query execution and data analysis |
| Excel | Data review and summary reporting |

---

# Business Questions

The analysis focused on answering the following business questions:

1. Which product categories contribute most to total revenue?
2. What is the overall cancellation rate?
3. Which products generate the highest revenue within each category?
4. How does average order value vary across categories?
5. Which seasonal periods contribute most to sales performance?
6. Which products underperform despite belonging to high-revenue categories?

---

# KPI Analysis

The project calculated and analysed key business metrics including:

- Total Revenue
- Average Order Value (AOV)
- Cancellation Rate
- Revenue by Product Category
- Product Ranking by Revenue
- Seasonal Sales Trends

---

# SQL Analysis

SQL queries were developed to analyse transaction behaviour and generate business insights.

### Sample SQL Query

```sql
SELECT category,
       SUM(sales) AS total_revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY total_revenue DESC;
```

### Advanced SQL Techniques Used
- Window Functions
- Ranking Functions
- Aggregations
- Group By Analysis
- KPI Calculations
- Trend Analysis

---

# Key Insights

- Total analysed revenue exceeded $2.7M across all transactions
- Average order value was approximately $86
- Cancellation rate was close to 15%, indicating operational inefficiencies
- Revenue was concentrated within a limited number of product categories
- Certain premium products generated significantly higher revenue than others within the same category
- Seasonal sales patterns showed periods of increased customer demand

---

# Business Recommendations

Based on the analysis:

- Investigate operational causes behind elevated cancellation rates
- Prioritise inventory planning for top-performing categories
- Increase promotional focus on high-margin products
- Review underperforming products within profitable categories
- Use seasonal demand insights to improve marketing and sales planning

---

# Repository Structure

```text
ecommerce-revenue-cancellation-analysis/
│
├── data/
├── sql/
├── README.md
```
---

# Project Workflow

```text
Raw Transaction Data
→ SQL KPI Analysis
→ Revenue & Cancellation Analysis
→ Product Performance Evaluation
→ Business Insights & Recommendations
```

---

# Conclusion

This project demonstrates how SQL and business reporting techniques can be used to analyse e-commerce transaction data and uncover actionable insights related to revenue performance, product trends, and operational efficiency. The analysis highlights the importance of KPI reporting and trend analysis in supporting data-driven business decisions.

---

# Author

Deepa Thomas  
Data Analyst | SQL • Python • Power BI • Business Analytics

GitHub: https://github.com/deepa905
