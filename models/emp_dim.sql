select id, 
       f_name, 
       l_name, 
       phone, 
       city, 
       country,
       {{city_code_lkp('city')}} as city_code
 from {{ source("emp source", "emp") }}
