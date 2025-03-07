{% macro get_date(date_column) %}
    EXTRACT(YEAR FROM SAFE_CAST({{ date_column }} AS DATE)) AS year,
    EXTRACT(MONTH FROM SAFE_CAST({{ date_column }} AS DATE)) AS month,
    EXTRACT(DAY FROM SAFE_CAST({{ date_column }} AS DATE)) AS day
{% endmacro %}