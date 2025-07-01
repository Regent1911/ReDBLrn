SELECT object_name
FROM (
    SELECT name AS object_name, 0 AS sort_priority
    FROM person
    UNION ALL
    SELECT pizza_name AS object_name, 1 AS sort_priority
    FROM menu
) AS combined_data
ORDER BY sort_priority, object_name;