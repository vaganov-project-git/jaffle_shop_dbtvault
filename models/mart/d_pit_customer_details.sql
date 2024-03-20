SELECT 
    *
FROM 
    {{ref('v_pit_customer_details')}} vpcd 
    LEFT JOIN {{ref('sat_customer_details')}} scd ON vpcd.sat_customer_details_pk = scd.