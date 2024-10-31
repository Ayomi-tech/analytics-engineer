with source as (
    select * from {{ source('northwind', 'privileges') }}
)
select *, 
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source