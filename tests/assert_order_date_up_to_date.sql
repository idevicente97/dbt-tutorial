
select
  order_id,
  order_date
from {{ ref('stg_orders') }}
where not order_date >= '2000-01-01'
