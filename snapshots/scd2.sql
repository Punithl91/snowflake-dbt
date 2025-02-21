{% snapshot scd_table %}

{{ config(
      schema='snapshot',
      unique_key='ID',
      strategy='check',
      check_cols=['CITY','COUNTRY'],
      )
      }}

--Updated_at stratergy

{{ config(
      schema='snapshot',
      unique_key='ID',
      strategy='check',
      Updated_at='Updated_at',
      )
      }}

select * from {{source("emp source","emp")}}

{% endsnapshot %}