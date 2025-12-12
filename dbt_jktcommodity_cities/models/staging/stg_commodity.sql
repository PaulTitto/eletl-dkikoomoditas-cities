select * from {{
    source("dbt_jktcommodity_cities", "commodity")
                  }}