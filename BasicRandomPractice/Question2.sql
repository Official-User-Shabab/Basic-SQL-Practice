-- Question 2 — SQL

/* 

-- Delete the existing tables
DROP TABLE IF EXISTS Shippings;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

-- Create companies
CREATE TABLE companies (
    company VARCHAR(50),
    sector VARCHAR(50),
    country VARCHAR(10),
    employees INT
);

INSERT INTO companies (company, sector, country, employees) VALUES
('Alpha', 'Tech', 'UK', 5000),
('Beta', 'Tech', 'US', 8000),
('Gamma', 'Finance', 'UK', 6000),
('Delta', 'Finance', 'US', 10000),
('Epsilon', 'Healthcare', 'UK', 3500),
('Zeta', 'Healthcare', 'US', 4500);

-- Create financials
CREATE TABLE financials (
    company VARCHAR(50),
    revenue INT,
    profit INT,
    year INT
);

INSERT INTO financials (company, revenue, profit, year) VALUES
('Alpha', 500, 80, 2026),
('Beta', 800, 120, 2026),
('Gamma', 650, 90, 2026),
('Delta', 900, 180, 2026),
('Epsilon', 400, 40, 2026),
('Zeta', 550, 70, 2026);

-- Check the new tables
SELECT * FROM companies;
SELECT * FROM financials;

*/

/*
1. Basic SELECT

Return:

company
revenue
profit

for all 2026 financial records.


select
  company,
  revenue,
  profit
from Financials
where year = 2026

*/


/*
2. DISTINCT

Return all distinct countries in alphabetical order.


select distinct country
from Companies
order by country

*/


/*

3. Filtering

Find UK companies with:

revenue > 500
AND profit >= 80

Sort by revenue descending.



select c.company
from Companies c
join Financials f on f.company = c.company
where c.country = "UK" and f.revenue > 500 and f.profit >= 80
order by revenue desc

*/

/*

4. GROUP BY

For every sector, return:

sector
number_of_companies
average_revenue
total_profit

You will need a JOIN.


select
	c.sector,
	count(c.company) as number_of_companies,
	avg(f.revenue) as average_revenue,
	sum(f.profit) as total_profit
from Companies c
join Financials f on f.company = c.company
group by c.sector

*/


/*

5. HAVING

Modify Question 4 so that only sectors with:

average_revenue > 550

remain.

select
	c.sector,
	count(c.company) as number_of_companies,
	avg(f.revenue) as average_revenue,
	sum(f.profit) as total_profit
from Companies c
join Financials f on f.company = c.company
group by c.sector
having average_revenue > 550

*/


/*

6. CASE WHEN

Return:

company
profit
profit_category

where:

profit >= 100   → "High"
profit >= 60    → "Medium"
otherwise       → "Low"



select
    company,
    profit,
    case
        when profit >= 100 then 'High'
        when profit >= 60 then 'Medium'
        else 'Low'
    end as profit_category
from Financials
    
*/


/*

7. COUNT DISTINCT

Return the number of distinct countries represented by the companies table.

select count(distinct country) from Companies

*/


/*
8. LEFT JOIN

Write a query that returns every company, including companies that might not have a financial record.

Return:

company
sector
revenue
profit

Use a LEFT JOIN.


select
c.company,
c.sector,
f.revenue,
f.profit
from Companies c
left join Financials f on f.company = c.company

*/


/*

9. Slightly harder

For each sector, calculate:

sector
average_profit_margin

where profit_margin = profit / revenue

select
    c.sector,
    avg(f.profit * 1.0 / f.revenue) as average_profit_margin
from Companies c
join Financials f
    on f.company = c.company
group by c.sector

*/


/* Skills this question covers 
SELECT
FROM
WHERE
AND
DISTINCT
ORDER BY
GROUP BY
HAVING
COUNT(*)
COUNT(DISTINCT ...)
AVG()
SUM()
CASE WHEN
INNER JOIN
LEFT JOIN
*/
