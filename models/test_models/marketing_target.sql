{{config(
    materialized='table'
)}}

select source,
       sales,
       cost 
from {{source("emp source","marketing")}}