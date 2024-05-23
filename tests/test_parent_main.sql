{{
  config({    
    "error_if": '< 1000',
    "fail_calc": 'count(*)',
    "severity": 'error',
    "warn_if": '<5000'
  })
}}

WITH env_uitesting_main_model_snow_1 AS (

  SELECT * 
  
  FROM {{ ref('env_uitesting_main_model_snow_1')}}

),

Filter_1 AS (

  SELECT * 
  
  FROM env_uitesting_main_model_snow_1 AS in0
  
  WHERE C_INT > 10

),

OrderBy_1 AS (

  SELECT * 
  
  FROM Filter_1 AS in0
  
  ORDER BY C_NUM ASC, C_NUM10 ASC, C_DEC ASC, C_NUMERIC ASC, C_INT ASC

)

SELECT *

FROM OrderBy_1
