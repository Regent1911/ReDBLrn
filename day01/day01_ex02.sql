SELECT pizza_name
FROM menu
WHERE id IN (
    SELECT MIN(id)
    FROM menu
    GROUP BY pizza_name
)
ORDER BY pizza_name DESC;