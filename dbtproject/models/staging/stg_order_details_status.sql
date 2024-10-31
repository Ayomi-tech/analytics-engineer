with source as (
    select * from {{ source('northwind', 'order_details_status') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
 from source