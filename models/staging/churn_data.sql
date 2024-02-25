--- CTE ( Common Table Expression )
--- Materializando como View
{{ config(materialized='view')}}

with src_churn as
(
select *
from snowflake.SN_CHURN_DATA
)

select * from src_churn