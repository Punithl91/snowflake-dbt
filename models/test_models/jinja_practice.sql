{{True}}
{{"Test Jinja"}}
{{[1,2,3,4]}}
{{{"Name":"Punith","Age":33}}}

--comments
{# Commenst in jings template#}

{# Variables  jings template#}

{%- set var1=35 -%}
{{var1}}

--Conditional logics
--If statemenst
{%- if 1==2 -%}
    {{"I am in the 1st block"}}
{%- else -%}
    {{"I am in the 2nd block"}}
{%- endif -%}


--Ifese statemenst
{%- if 1==2 -%}
    {{"I am in the 1st block"}}
{%- elif 2==4 -%}
    {{"I am in the 2nd block"}}
{%- else -%}
    {{"I am in the 3rd block"}}
{%- endif -%}


--For loop

{% for i in [1,2,3] -%}
    {{i}}
{% endfor %}


