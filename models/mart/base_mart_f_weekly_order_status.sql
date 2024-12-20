with source as (
      select * from {{ source('mart', 'f_weekly_order_status') }}
),
renamed as (
    select
        {{ adapter.quote("order_week") }},
        {{ adapter.quote("status") }},
        {{ adapter.quote("count") }}

    from source
)
select * from renamed
  