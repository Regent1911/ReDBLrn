INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    (SELECT MAX(id) + gs FROM person_order, generate_series(1,(SELECT COUNT(*) FROM person)) AS gs),
    p.id,
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
    '2022-02-25'
FROM person p, generate_series(1,(SELECT COUNT(*) FROM person)) AS gs
WHERE p.id = gs;