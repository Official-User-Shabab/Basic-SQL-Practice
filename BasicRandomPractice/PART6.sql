/*
sales
--------------------------------------------------------
date | company | sector | country | revenue | units
*/

select
    sector
    sum(revenue) as total_revenue
    sum(units) as total_units
    sum(revenue) / sum(unit) as average_revenue_per_unit
from sales
where country = 'UK'
and date >= '2026-01-01'
and date < '2027-01-01'
group by sector
having sum(revenue) > 1000000
order by total_revenue desc
