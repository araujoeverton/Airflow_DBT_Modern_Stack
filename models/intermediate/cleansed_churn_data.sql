{{ config(materialized='table')}}

with cleansed_churn_data as
(
select * from {{ ref('churn_data') }}
)

select * from cleansed_churn_data limit 10