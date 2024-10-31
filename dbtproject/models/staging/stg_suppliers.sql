with source as (
    select * from {{ source('northwind', 'suppliers') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source