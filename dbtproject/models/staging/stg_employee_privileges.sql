with source as (
    select * from {{ source('northwind', 'employee_privileges') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source