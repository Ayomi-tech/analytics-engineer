with source as (
    select * from {{ source('northwind', 'orders_status') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source