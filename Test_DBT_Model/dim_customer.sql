
{{ config(
    materialized='table'  -- Ensures table creation in Snowflake
) }}

CREATE OR REPLACE TABLE dim_customer as (
    select
    customer_id,
    customer_name,
    customer_segment,  -- Prevent NULL
    customer_city
    from dbt_test_db.dbt_test_schema.fact_sales     -- {{ source('dbt_test_schema', 'fact_sales') }}
);



