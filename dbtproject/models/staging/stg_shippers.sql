with source as (
    select * from {{ source('northwind', 'shippers') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source