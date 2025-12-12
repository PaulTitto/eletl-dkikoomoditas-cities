with stg_dim_commodity as (select price_daily, date, commodity_name, avg_value, max_value, min_value, city_id, city_name

from {{ ref ("stg_commodity") }}
    ),
final_dim_commodity as (
    {{dbt_utils.generate_surrogate_key( ["nk_commodity_id"] ) }} as sk_commodity_id,
    *,
    {{dbt_date.now()}} as created_at,
    {{dbt_date.now()}} as updated_at,
    from stg_dim_commodity
    )

select * from final_dim_commodity