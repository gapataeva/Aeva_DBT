select orderid,
sum(ORDERSELLPRICE) as osp
from {{ ref('raw_order') }}
group by orderid
having osp<0