# SQL Skills Lab 🗄️

A personal SQL practice repository for gradually building and documenting my SQL skills through increasingly complex exercises.

The goal of this repository is to move from fundamental SQL syntax toward realistic business and analytics queries involving multiple tables, aggregations, filtering, joins, subqueries, and calculated metrics.

This is an ongoing practice project — new exercises and more advanced SQL concepts will be added over time.

---

## 🗂️ Repository Structure

```text
SQL-Skills-Lab/
│
├── BasicRandomPractice/
│   └── General SQL exercises and smaller practice problems
│
├── BasicSQLTasks/
│   └── Structured SQL tasks covering progressively harder concepts
│
├── setup/
│   └── SQL scripts for creating tables and inserting practice data
│
└── README.md
```

---

 ## 🗄️ Practice Databases

 The repository currently contains exercises using several mock datasets.

 ### B2B Sales Database

 A small relational database representing a B2B technology company.

```
Clients
Products
Orders
OrderDetails
SupportTickets
```

 ### Financial / Company Dataset

 A separate dataset used for practicing analytical queries:

```
Companies
Financials
```

 ### Sales Dataset

 A sales dataset used for business reporting and aggregation exercises:

```
sales
    date
    company
    sector
    country
    revenue
    units
```

---

 ## 🚀 SQL Concepts Practiced

 The exercises currently cover:

 ### Fundamentals

 - `SELECT`
- `FROM`
- `WHERE`
- `AND`
- `DISTINCT`
- `ORDER BY`

 ### Aggregation

 - `COUNT()`
- `COUNT(DISTINCT ...)`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `HAVING`

 ### Conditional Logic

 - `CASE WHEN`
- Creating calculated categories from numeric values

 ### Relational Queries

 - `INNER JOIN`
- `LEFT JOIN`
- Joining multiple tables
- Understanding primary/foreign-key relationships
- Many-to-many relationships through junction tables

 ### Analytical Queries

 - Revenue and profit analysis
- Average revenue by sector
- Total profit by sector
- Profit margins
- Revenue per unit
- Customer spending
- Order counts
- Filtering aggregated results
- Date-based analysis
- Country and sector analysis

 ### More Advanced Techniques

 - Subqueries
- `NOT IN`
- `NOT EXISTS`
- `COUNT(DISTINCT ...)`
- Post-aggregation filtering with `HAVING`
- Multi-table aggregation
- Calculated metrics
- Business-rule based filtering

---

 ## 📚 Current Practice Tasks

 ### Part 1 — Basic SQL Practice

 Exercises covering fundamental SQL syntax and simple filtering.

 Examples include:

 - Selecting specific columns
- Filtering rows
- Sorting results
- Working with distinct values

---

 ### Part 2 — Relational SQL

 Practice using the B2B database to answer questions involving multiple related tables.

 Examples include:

 #### High-Value Products

 Find hardware products above a specified price.

 #### Order History

 Join `Orders` and `Clients` to associate orders with client names.

 #### Order Details / Invoice Data

 Join:

```
Clients
    ↓
Orders
    ↓
OrderDetails
    ↓
Products
```

 to reconstruct detailed purchase information.

 #### Support Ticket Analysis

 Join support tickets with clients and products to identify unresolved issues.

---

 ### Part 3 — Company & Financial Analysis

 A separate dataset containing companies and their financial records.

 Example exercises include:

 - Returning financial records for a specific year
- Finding distinct countries
- Filtering companies by country, revenue, and profit
- Calculating sector-level statistics
- Filtering grouped results with `HAVING`
- Categorising companies using `CASE`
- Counting distinct countries
- Using `LEFT JOIN` to retain companies without financial records
- Calculating average profit margins

 Example analytical query:

```
SELECT
    c.sector,
    AVG(f.profit * 1.0 / f.revenue) AS average_profit_margin
FROM Companies c
JOIN Financials f
    ON f.company = c.company
GROUP BY c.sector;
```

---

 ### Part 4 — Aggregation & Business Analytics

 More focused analytical exercises using grouped business data.

 Current exercises include:

 - Finding companies above a revenue threshold
- Ranking companies by revenue
- Comparing sectors
- Calculating average revenue
- Calculating total profit
- Filtering aggregated results with `HAVING`
- Counting distinct countries
- Creating profit categories with `CASE`

 Example:

```
SELECT
    sector,
    COUNT(*) AS number_of_companies,
    AVG(revenue) AS average_revenue,
    SUM(profit) AS total_profit
FROM companies
GROUP BY sector
ORDER BY total_profit DESC;
```

---

 ### Part 5 — Business Analytics Deep-Dive

 The current exercises are beginning to move toward more realistic business questions rather than isolated SQL syntax exercises.

 One example is a high-value customer analysis requiring:

 - Multiple table joins
- `COUNT(DISTINCT ...)`
- `SUM()`
- Calculated spending metrics
- `HAVING`
- Subqueries
- Excluding customers based on historical purchases

 The objective is to produce a customer-level report containing:

```
ClientName
TotalOrders
TotalSpent
```

 while applying multiple business rules simultaneously.

---

 ## 🧠 Learning Progression

 The repository is intended to grow roughly along this path:

```
SQL Fundamentals
       ↓
Filtering & Sorting
       ↓
Aggregation
       ↓
GROUP BY / HAVING
       ↓
CASE WHEN
       ↓
INNER JOIN
       ↓
LEFT JOIN
       ↓
Multi-table Queries
       ↓
Calculated Metrics
       ↓
Subqueries
       ↓
Business Analytics
       ↓
More Advanced SQL
```

 The exercises aren't intended to be completed in one sitting. The idea is to gradually revisit concepts and increase the complexity of the problems over time.

---

 ## 🛠️ Tech Stack

 - SQL
- T-SQL / Microsoft SQL Server syntax
- Relational database concepts
- Git / GitHub for version control

---

 ## 🎯 Goal

 The long-term goal is to build enough SQL proficiency to comfortably work with real-world relational datasets and business analytics problems.

 Areas I plan to add progressively include:

 - More complex subqueries
- Common Table Expressions (`CTEs`)
- Window functions
- `ROW_NUMBER()`
- `RANK()`
- `LAG()` / `LEAD()`
- Date and time analysis
- More advanced aggregations
- Data cleaning
- Conditional aggregation
- Query optimisation
- Larger relational schemas
- More realistic business case studies

---

 ## 📈 Progress

 This repository is intentionally a work in progress.

 The difficulty of the exercises will increase gradually as new SQL concepts are introduced and existing concepts are combined into more complex queries.

 **Current focus:** Building a strong foundation in relational SQL, aggregation, joins, and business-oriented analytical queries.
