WITH date_series AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::date AS day
)
SELECT
    ds.day AS missing_date
FROM
    date_series ds
LEFT JOIN (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
) AS vd ON ds.day = vd.visit_date
WHERE
    vd.visit_date IS NULL
ORDER BY
    missing_date;
