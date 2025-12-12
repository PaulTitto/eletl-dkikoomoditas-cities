with dim_commodity as (
    select  * from {{ ref("dim_commodity") }}
),

dim_date as (
    select * from {{ ref("dim_date") }}
)
,
final_fct_commodity (
    select
        {{dbt_time.generate_surrogate_key( ["dc.nk_commodity_id"] )}} as sk_commodity_id
        dc.nk_commodity_id,
        dc.price_daily,
        dd.date_day = date,
        dc.commodity_name,
        dc.avg_value,
        dc.max_value,
        dc.min_value,
        dc.city_id,
        dc.city_name
    from dim_commodity dc
    inner join dim_date dd
    on dd.date_day = dc.date
    )


select * from final_fct_commodity