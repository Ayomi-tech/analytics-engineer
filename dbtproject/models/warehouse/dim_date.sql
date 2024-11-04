SELECT
    format_date('%F', d) AS id,
    d                    AS full_date,
    extract(YEAR from d) AS year,
    extract(WEEK from d) AS year_week,
    extract(DAY from d) AS year_day,
    extract(YEAR from d) AS fiscal_year,
    format_date('%Q', d) AS foscar_qtr,
    extract(MONTH from d) AS month,
    format_date('%B', d) AS month_name,
    format_date('%w', d) AS week_day,
    format_date('%A', d) AS day_name,
    (CASE WHEN format_date('%A', d) in ('Sunday', 'Saturday') THEN 0 ELSE 1 END) AS day_is_weekday, 
FROM (
    SELECT *
    FROM unnest(generate_date_array('2014-01-01', '2050-01-01', interval 1 day)) as d)