{% snapshot snapshot_parent_main %}
{{
  config({    
    "strategy": 'timestamp',
    "target_schema": 'QA_SCHEMA',
    "unique_key": 'C_INT',
    "updated_at": 'C_DATE'
  })
}}

WITH env_uitesting_main_model_snow_1 AS (

  SELECT *
  
  FROM {{ ref('env_uitesting_main_model_snow_1')}}

),

Reformat_1 AS (

  SELECT *
  
  FROM env_uitesting_main_model_snow_1 AS in0

)

SELECT *

FROM Reformat_1

{% endsnapshot %}
