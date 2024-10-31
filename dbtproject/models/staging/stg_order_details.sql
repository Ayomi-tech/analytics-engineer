with source as (
    select * from {{ source('northwind', 'order_details') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source