with source as (
      select * from {{ source('raw_vault', 'sat_order_details') }}
),
renamed as (
    select
        {{ adapter.quote("order_pk") }},
        {{ adapter.quote("order_hashdiff") }},
        {{ adapter.quote("order_date") }},
        {{ adapter.quote("status") }},
        {{ adapter.quote("effective_from") }},
        {{ adapter.quote("load_date") }},
        {{ adapter.quote("record_source") }}

    from source
)
select * from renamed
  