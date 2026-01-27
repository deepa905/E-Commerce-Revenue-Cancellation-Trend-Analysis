# E-Commerce Sales Analysis using SQL

**📌 Project Overview**

This project focuses on analyzing e-commerce sales data using SQL to answer key business-oriented questions related to revenue performance, product demand, customer behavior, and order outcomes.

The analysis uses the publicly available bigquery-public-data.thelook_ecommerce dataset and is designed to demonstrate SQL proficiency and business interpretation, which are core requirements for entry-level Data Analyst roles.

**🎯 Business Objective**

To understand:

* How revenue is distributed across products, categories, and regions

* Which products and categories drive the most value

* How customer purchasing behavior impacts revenue

* The extent of order cancellations and returns

* Whether revenue shows seasonal or time-based trends

**🧩 Dataset Used**

* Source: Google BigQuery Public Dataset
* Dataset: bigquery-public-data.thelook_ecommerce

**Key Tables Analyzed**:

* order_items

* orders

* products

* users

**🛠️ Tools & Technologies**

SQL: Google BigQuery (Standard SQL)

**🔍 Analysis Scope**
The analysis focuses on business-relevant SQL queries, including:

* Total revenue calculation

* Revenue by product category

* Monthly revenue trends

* Total customers
  
* Average order value (AOV)

* Top products by revenue

* Top customers by revenue

* Average selling price by category

* Order distribution by status

* Cancellation rate

* Revenue by country

* Product ranking within categories using window functions

**📊 Key Insights from SQL Analysis**

* The platform generated approximately $2.7M in completed order revenue, indicating a mid-scale e-commerce operation with sufficient transaction volume for business analysis.

* Revenue is heavily concentrated in apparel categories, with Outerwear & Coats and Jeans contributing the largest share, highlighting strong demand for seasonal and premium clothing.

* Sales show a clear upward trend toward late 2025 and early 2026, suggesting seasonal effects and increased customer activity during colder months.

* The average order value is ~$86, indicating moderate basket size and potential opportunity to increase revenue through cross-selling or bundling strategies.

* A small group of customers contributes disproportionately higher revenue, demonstrating the presence of high-value customers who are important for retention-focused strategies.

* Premium products and well-known brands (e.g., outerwear and accessories) drive significant revenue despite lower unit volume, reinforcing the importance of brand-driven merchandising.

* The order cancellation rate (~15%) is relatively high, indicating potential revenue leakage and opportunities to improve order fulfillment and customer experience.

* Revenue is geographically concentrated, with China and the United States emerging as the top contributing markets, suggesting priority regions for targeted marketing and operational optimization.

**💡 Business Takeaways**

* Focus inventory and marketing on high-revenue apparel categories

* Premium products should be prioritized due to high revenue contribution

* Reducing cancellations and returns could significantly improve net revenue

* Seasonal trends can be leveraged for demand forecasting and promotions

* Geographic concentration highlights opportunities for regional optimization
