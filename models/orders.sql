{{
    config(materialized = 'incremental',
    unique_key = 'order_id')
}}

with orders as(
    select * from {{'stg_orders'}}
    {% if is_incremental() %}
    where order_date > (select max(order_date) from {{this}})
    {% endif%}
)
select * from orders