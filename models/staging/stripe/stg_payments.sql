select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    --amount was in cents so converts to dollar
    cast(amount/100 as numeric(10,2)) as amount,
    created as created_at
from 
    {{source('dbt_stripe', 'payments')}}
