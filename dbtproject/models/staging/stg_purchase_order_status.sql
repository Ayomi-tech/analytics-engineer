with source as (
    select * from {{ source('northwind', 'purchase_order_status') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source