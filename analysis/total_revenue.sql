with revenue as (
  select
    sum(case when status = 'success' then amount end)
  from {{ source('stripe', 'payment')}}
)
