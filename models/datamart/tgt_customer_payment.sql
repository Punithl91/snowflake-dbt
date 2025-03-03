{{
    config(
        database='retail_bi_db',
        schema='retail_bi_schema',
        materialized='table')
}}

with customers as (
    select * from {{ref('stg_customers')}}
),
orders as (
    select * from {{ref('stg_orders')}}
),
payments as (
    select * from {{ref('stg_payments')}}
)
select c.customer_id,
       c.first_name,
       c.last_name,
       min(o.order_date) first_order,
       max(o.order_date) as recent_order,
       sum(p.sales_ammount) total_paymnet
from customers c 
left join orders o on c.customer_id=o.customer_id
left join payments p on p.order_id=o.order_id
group by all
order by c.customer_id