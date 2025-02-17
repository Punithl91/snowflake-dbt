{% macro city_code_lkp(city_code) %}
case when {{city_code}}='Bng' then '100'
        when {{city_code}}='Mys' then '200'
        when {{city_code}}='Chn' then '300'
        when {{city_code}}='Hsn' then '400'
        else 500
        end
{% endmacro %}