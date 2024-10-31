with source as (
    select * from {{ source('northwind', 'inventory_transactions') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source