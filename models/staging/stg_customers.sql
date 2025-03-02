with raw as (
           select * from {{source('snowflake source stg','raw_customers')}}
            ),
     final as (
        select 
            id as customer_id,
            first_name,
            replace(last_name,'.','') as last_name
            from 
                raw
     )
    select * from final