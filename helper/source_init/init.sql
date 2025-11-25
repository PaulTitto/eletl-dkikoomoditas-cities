-- "value",
--     "time",
--     "commodity_id"
--     "commodity_name",
--     "avg_value",
--     "max_value",
--     "min_value",
--     "city_id",
--     "city_name",
--     "Year",
--     "month",
CREATE TABLE commodity_source (
    value integer NOT NULL ,
    commodity_id integer NOT NULL,
    commodity_name varchar(255) NOT NULL,
    avg_value integer NOT NULL,
    max_value integer NOT NULL,
    min_value integer NOT NULL,
    city_id integer NOT NULL,
    city_name varchar(255) NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL
)