select 
    customername,
    segment,
    country,
    sum(profit) as profit
from {{ ref('stg_orders') }}
group by
    customername,
    segment,
    country