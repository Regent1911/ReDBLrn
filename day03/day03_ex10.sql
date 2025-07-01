INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    (SELECT MAX(id) + gs FROM person_order, generate_series(1,2) AS gs),
    (SELECT id FROM person WHERE name IN ('Denis', 'Irina') ORDER BY id OFFSET gs-1 LIMIT 1),
    (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
    '2022-02-24'
FROM generate_series(1,2) AS gs;