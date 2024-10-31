with source as (
    select * from {{ source('northwind', 'orders') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp 
from source