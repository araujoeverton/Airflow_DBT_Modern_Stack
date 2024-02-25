--- CTE ( Common Table Expression )
--- Materializando como View
{{ config(materialized='view')}}

with src_symptoms as
(
select *
from snowflake.SN_SYMPTOMS
)

select
    s.DISEASE,
    s.SYMPTOM_1,
    s.SYMPTOM_2,
    s.SYMPTOM_3,
    s.SYMPTOM_4,
    s.SYMPTOM_5,
    s.SYMPTOM_6,
    s.SYMPTOM_7,
    s.SYMPTOM_8,
    s.SYMPTOM_9,
    s.SYMPTOM_10,
    s.SYMPTOM_11,
    s.SYMPTOM_12,
    s.SYMPTOM_13,
    s.SYMPTOM_14,
    s.SYMPTOM_15,
    s.SYMPTOM_16,
    s.SYMPTOM_17,
from src_symptoms as s      
