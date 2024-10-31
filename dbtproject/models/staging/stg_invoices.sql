with source as (
    select * from {{ source('northwind', 'invoices') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source