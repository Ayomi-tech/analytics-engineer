with source as (
    select * from {{ source('northwind', 'employees') }}
)
select *,
       CURRENT_TIMESTAMP() AS ingestion_timestamp
from source