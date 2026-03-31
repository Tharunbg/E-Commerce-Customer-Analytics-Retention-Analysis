# E-Commerce-Customer-Analytics-Retention-Analysis

## 🎯 Business Problem
E-commerce businesses often struggle with:
- Low customer retention
- High dependence on new customer acquisition
- Unclear understanding of high-value customers

This project aims to:
- Analyze revenue and customer trends
- Measure retention using cohort analysis
- Segment customers using RFM analysis
- Identify actionable business insights

---

## 🧰 Tech Stack
- **Python** (Pandas, NumPy, Matplotlib, Seaborn)
- **SQL (MySQL)** – Data analysis & cohort queries
- **Tableau** – Dashboard visualization
- **Jupyter Notebook**

---

## 📥 Dataset
- Source: Olist E-commerce Dataset (Kaggle)
- Includes:
  - Orders
  - Customers
  - Order Items
  - Payments
  - Products

---

## 🧹 Data Preparation
- Filtered only **delivered orders**
- Converted timestamps to proper date formats
- Handled missing values
- Created new features:
  - `order_date`, `order_month`, `order_year`
- Built structured datasets for analysis

---

## 🧱 Data Modeling

### 1. Master Dataset
- Combined multiple tables
- Includes revenue, product, category, and region data
- Used for KPI and business analysis

### 2. Customer Orders Dataset
- One row per order
- Used for:
  - Cohort analysis
  - Customer segmentation (RFM)

---

## 📊 Key Analyses

### 🔹 KPI Analysis
- Total Revenue: ~$19.7M
- Total Orders: ~96K
- Total Customers: ~96K
- Average Order Value: ~$205

---

### 🔹 Cohort Analysis (Retention)
- Retention drops below **1% after first purchase**
- Majority of customers do not return
- Indicates severe retention issue

---

### 🔹 RFM Segmentation

Customers were segmented into:
- 🟢 Champions
- 🔵 Loyal Customers
- 🟠 At Risk
- ⚪ Others

#### Key Finding:
> A significant portion of revenue comes from **At Risk customers**, indicating high potential revenue loss.

---

### 🔹 Customer Behavior Insights
- Most customers are **one-time buyers**
- Revenue is concentrated among a small segment of users
- Low repeat purchase behavior

---

## 📊 Tableau Dashboard

### 🔹 Dashboards Created:
1. **Business Overview**
   - Revenue, Orders, Customers, Trends

2. **Customer Analytics**
   - RFM Segments
   - Revenue by Segment

3. **Retention Analysis**
   - Cohort Analysis

4. **Product & Region Analysis**
   - Top Categories
   - Revenue by State

---

## 📸 Dashboard Preview

![Executive Dashboard](dashboard/executive.png)
![Customer Dashboard](dashboard/customer.png)
![Cohort Dashboard](dashboard/cohort.png)
![Product Dashboard](dashboard/product.png)

---

## 💡 Key Insights

- 📉 Customer retention is extremely low (<1%)
- ⚠️ Revenue is heavily dependent on at-risk customers
- 🛒 Majority of customers make only one purchase
- 🌍 Revenue is concentrated in a few categories and states

---

## 💡 Recommendations

- Improve post-purchase engagement
- Introduce loyalty and retention programs
- Target high-value and at-risk customers
- Reduce dependency on one-time buyers
