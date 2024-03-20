SELECT
    DATE_TRUNC('week', sod.order_date) AS order_week,
    sod.status,
    COUNT(sod.ORDER_PK)
FROM 
    {{ref('hub_order')}} ho
    LEFT JOIN {{ref('sat_order_details')}} sod ON ho.ORDER_PK = sod.ORDER_PK
GROUP BY 
    DATE_TRUNC('week', sod.order_date),
    sod.status
ORDER BY 
    DATE_TRUNC('week', sod.order_date) DESC,
    sod.status
