{% test new_generic_sales_test(model, column_name)%}

select * from 
{{model}}
where {{column_name}}>1000

{% endtest %}