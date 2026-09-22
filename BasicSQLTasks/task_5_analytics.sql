/*
Task 5: The Analytics Deep-Dive

Scenario:
  
The sales strategy team wants a high-value customer report to target for a new software tier, but they want to exclude hardware buyers entirely.

Requirements:
  
Write a single SQL query that retrieves client performance metrics according to these strict rules:

Calculated Metrics: Display ClientName, the total count of distinct orders placed (TotalOrders), and the total monetary amount spent across all purchases (TotalSpent, calculated from Quantity * UnitPrice).

Order Threshold: Include only clients who have placed at least 2 distinct orders.

Hardware Exclusion: Exclude any client who has ever purchased a product where Category = 'Hardware' in any of their orders.

Sorting: Sort the final output so the highest spending clients appear at the top (TotalSpent descending).

Schema Reference:

Clients (ClientId, ClientName)

Orders (OrderId, OrderDate, ClientId)

OrderDetails (OrderId, ProductId, Quantity)

Products (ProductId, ProductName, UnitPrice, Category)

SQL Concepts Required:

Multi-table relational JOIN statements

Aggregation (SUM(), COUNT(DISTINCT ...))

Post-aggregation filtering using HAVING

Subqueries (WHERE ClientId NOT IN (...) or NOT EXISTS (...))
*/
