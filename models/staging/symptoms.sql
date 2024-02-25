--- CTE ( Common Table Expression )
--- Materializando como View
{{ config(materialized='view')}}

with src_symptoms as
(
select *
from snowflake.SN_SYMPTOMS
)

select * from src_symptoms limit 10
