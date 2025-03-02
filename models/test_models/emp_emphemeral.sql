{{
    config(materialized='ephemeral')
}}
select * from {{source("emp source","emp")}}