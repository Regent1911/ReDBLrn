SELECT
    dates.day::date AS missing_date
FROM
    generate_series('2022-01-01', '2022-01-10', interval '1 day') AS dates(day)
LEFT JOIN (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
) AS visited_dates ON dates.day = visited_dates.visit_date
WHERE
    visited_dates.visit_date IS NULL
ORDER BY
    missing_date;