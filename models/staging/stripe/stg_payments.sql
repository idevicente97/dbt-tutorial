select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents, convert to dollars
    {{cents_to_dollars('amount', 4)}} as amount,
    created as created_a

    

from {{ source('stripe', 'payment') }}
