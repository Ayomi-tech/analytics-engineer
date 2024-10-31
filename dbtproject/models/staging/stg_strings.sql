with source as (
    select * from {{ source('northwind', 'strings') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source