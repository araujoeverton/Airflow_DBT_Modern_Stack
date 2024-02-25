--- CTE ( Common Table Expression )
--- Materializando como View
{{ config(materialized='view')}}

with src_precaution as
(
select *
from snowflake.SN_PRECAUTION
)

select 
    p.DISEASE,
    p.PRECAUTION_1,
    p.PRECAUTION_2,
    p.PRECAUTION_3,
    p.PRECAUTION_4
from src_precaution as p   
