with source as (
      select * from {{ source('mart', 'd_pit_customer_details') }}
),
renamed as (
    select
        {{ adapter.quote("as_of_date") }},
        {{ adapter.quote("customer_pk") }},
        {{ adapter.quote("first_name") }},
        {{ adapter.quote("last_name") }},
        {{ adapter.quote("email") }},
        {{ adapter.quote("effective_from") }},
        {{ adapter.quote("effective_to") }}

    from source
)
select * from renamed
  