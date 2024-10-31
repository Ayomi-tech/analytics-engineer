with source as (
    select * from {{ source('northwind', 'inventory_transaction_types') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source