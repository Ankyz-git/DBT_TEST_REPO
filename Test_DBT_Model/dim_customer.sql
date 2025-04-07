{{ config(
    materialized='table',
    schema='DBT_TEST_SCHEMA'
) }}

SELECT
  customer_id,
  customer_name,
  customer_segment,
  customer_city
FROM {{ source ('test_dbt_source', 'fact_sales') }}
