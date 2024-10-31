with source as (
    select * from {{ source('northwind', 'products') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source