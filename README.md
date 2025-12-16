# Taste-of-the-World-Cafe-SQL-Data-Analysis-Project

# 🍽️ Taste of the World Cafe – SQL Data Analysis Project

## 📌 Project Overview
This project analyzes customer order data for **Taste of the World Cafe**, a restaurant known for its diverse menu and generous portions.

At the start of the year, the cafe introduced a **new menu**.  
As a **Data Analyst**, my task was to explore the menu and order data to understand:
- Which menu items are performing well
- Which items are underperforming
- What high-value customers prefer to order

All analysis was performed using **SQL**.

---

## 🎯 Business Objective
The restaurant management wants to:
- Evaluate customer response to the new menu
- Identify popular and unpopular dishes
- Understand spending behavior of top customers

These insights help improve:
- Menu planning
- Pricing strategy
- Customer satisfaction

---

## 🗂️ Database Used
**Database Name:** `restaurant_db`

### Tables:
#### 1️⃣ `menu_items`
Contains menu-related information:
- `menu_item_id`
- `item_name`
- `category`
- `price`

#### 2️⃣ `order_details`
Contains order transaction data:
- `order_details_id`
- `order_id`
- `order_date`
- `item_id`

---

## 🛠️ Tools & Skills Used
- SQL (MySQL)
- Joins
- Aggregations (COUNT, SUM, AVG)
- GROUP BY & HAVING
- Subqueries
- Business insight generation

---

## 📊 Analysis & Objectives

---

## 🔍 Objective 1: Explore the Menu Items Table

**Key Questions Answered:**
- Total number of menu items
- Least and most expensive items
- Number of Italian dishes
- Least and most expensive Italian dishes
- Number of dishes per category
- Average price per category

**Key Findings:**
- The menu offers a wide variety of items across multiple categories
- Italian dishes include several high-priced items
- Average prices vary significantly by category

---

## 📅 Objective 2: Explore the Orders Table

**Key Questions Answered:**
- Date range of the order data
- Total number of orders
- Total number of items ordered
- Orders with the highest number of items
- Orders containing more than 12 items

**Key Findings:**
- The dataset covers a full operational period after the new menu launch
- Some customers place very large orders
- A subset of orders contains significantly high item counts

---

## 🧠 Objective 3: Analyze Customer Behavior

**Analysis Performed:**
- Joined `menu_items` and `order_details`
- Identified most and least ordered items
- Analyzed categories of popular and unpopular items
- Identified top 5 highest-spending orders
- Analyzed item composition of high-value orders

**Key Insights:**
- **American dishes are ordered the most**
- **Mexican dishes are ordered the least**
- High-spending orders often include:
  - Multiple Italian dishes
  - Higher-priced menu items

---

## 💰 Top Spending Behavior

- Top 5 orders contribute a large portion of revenue
- The **highest spending order** includes mostly Italian items
- High-value customers prefer **premium Italian dishes**

---

## 📈 Final Business Insights
- Italian dishes generate strong revenue and should remain on the menu
- Premium-priced Italian items are especially popular with top customers
- Mexican items may need:
  - Pricing review
  - Recipe improvement
  - Better promotion

---

