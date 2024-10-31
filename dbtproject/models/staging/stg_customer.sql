with source as (
    select * from {{ source('northwind', 'customer') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source
 