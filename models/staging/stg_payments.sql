with raw as (
    select * from {{source('snowflake source stg','raw_payments')}}
),
final as (
    select 
         id	as payment_id,
         order_id,
         payment_method,
         (amount/100)::int as sales_ammount
     from raw
)
    select *
    from final