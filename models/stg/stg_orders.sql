select 
-- from raw_order
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ORDERCOSTPRICE,
o.ORDERSELLPRICE,
o.ORDERSELLPRICE - o.ORDERCOSTPRICE as profit ,
-- from raw_customer
c.customername,
c.segment,
c.country,
-- from raw_product
p.productid,
p.category,
p.productname,
p.subcategory,
{{ markup() }} as markup
from {{ ref('raw_order') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid = p.productid