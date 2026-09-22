-- PART 4

-- TASK 10:

select company
from companies
where revenue > 150
order by revenue desc

-- TASK 11:

select
    sector,
    COUNT(*) AS number_of_companies,
    AVG(revenue) AS average_revenue,
    SUM(profit) AS total_profit
from companies
group by sector
order by total_profit DESC

-- TASK 12:

select
    sector,
    COUNT(*) AS number_of_companies,
    AVG(revenue) AS average_revenue,
    SUM(profit) AS total_profit
from companies
group by sector
having AVG(revenue) > 150;

-- TASK 13:

select COUNT(DISTINCT country) AS number_of_countries
from companies

-- TASK 14:

select
    company,
    profit,
    case
        when profit >= 40 THEN 'High'
        WHEN profit >= 20 then 'Medium'
        ELSE 'Low'
    end as profit_category
from companies



