select 
    customer_id,
    sum(order_amount) as total_revenue
from 
    public.transactions
group by 
    customer_id
