with raw as (
       select * from {{source('snowflake source stg','raw_orders')}}
),
final as (
    select 
          id as order_id,
          user_id as customer_id,
          order_date,
          status
        from raw
)
   select *
     from final