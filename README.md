# SQL B2B Analytics Practice 📊

This repository contains a mock relational database representing a B2B tech hardware company. I built this project to practice writing complex SQL queries, specifically focusing on data extraction, filtering, and multi-table `INNER JOIN` operations.

## 🗂️ Project Structure

- `/setup` - Contains the SQL scripts to create the schema and insert mock data.
- `/queries` - Contains my solutions to various data extraction tasks.

## 🗄️ Database Schema

The database consists of 5 normalized tables:

1. **Clients:** Information about the B2B companies purchasing products.
2. **Products:** Inventory catalog including pricing and categories.
3. **Orders:** High-level order status and dates.
4. **OrderDetails:** Line-item specifics for each order (mapping Orders to Products).
5. **SupportTickets:** Logs of client issues mapped to specific products.

## 🚀 Tasks & Queries Completed

I have written queries to solve the following business logic problems:
1. **Basic Filtering:** Extracting high-value hardware products.
2. **Order History:** Joining `Orders` and `Clients` to map transaction history to human-readable names.
3. **Receipt Generation:** Writing a 4-table `INNER JOIN` to reconstruct a detailed client invoice.
4. **Support Ticket Analysis:** Identifying unresolved client issues and the specific products causing them.

## 💻 Tech Stack
- **Language:** SQL (T-SQL)
- **Concepts:** `SELECT`, `WHERE`, `INNER JOIN`, Primary/Foreign Key Relationships.

---
*Created as a personal practice project to simulate enterprise data pipeline extraction.*
