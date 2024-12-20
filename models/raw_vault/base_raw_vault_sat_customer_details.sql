with source as (
      select * from {{ source('raw_vault', 'sat_customer_details') }}
),
renamed as (
    select
        {{ adapter.quote("customer_pk") }},
        {{ adapter.quote("customer_hashdiff") }},
        {{ adapter.quote("first_name") }},
        {{ adapter.quote("last_name") }},
        {{ adapter.quote("email") }},
        {{ adapter.quote("effective_from") }},
        {{ adapter.quote("load_date") }},
        {{ adapter.quote("record_source") }}

    from source
)
select * from renamed
  