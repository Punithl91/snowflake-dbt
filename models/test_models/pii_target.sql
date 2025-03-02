select 
       id,
       name,
       age,
       email,
       phone,
       gender 
from {{ source('emp source','pii_raw') }}