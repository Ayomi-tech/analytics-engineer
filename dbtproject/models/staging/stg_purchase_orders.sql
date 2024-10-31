with source as (
    select * from {{ source('northwind', 'purchase_orders') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source