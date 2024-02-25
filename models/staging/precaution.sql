--- CTE ( Common Table Expression )
--- Materializando como View
{{ config(materialized='view')}}

with src_precaution as
(
select *
from snowflake.SN_PRECAUTION
)

select 
    pu.DISEASE,
    pu.PRECAUTION_1,
    pu.PRECAUTION_2,
    pu.PRECAUTION_3,
    pu.PRECAUTION_4
from src_precaution as pu    
