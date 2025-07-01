SELECT p.name
FROM person p
WHERE p.gender = 'female'
  AND EXISTS (
      SELECT 1
      FROM person_order po
      JOIN menu m ON po.menu_id = m.id
      WHERE po.person_id = p.id
        AND m.pizza_name = 'pepperoni pizza'
  )
  AND EXISTS (
      SELECT 1
      FROM person_order po
      JOIN menu m ON po.menu_id = m.id
      WHERE po.person_id = p.id
        AND m.pizza_name = 'cheese pizza'
  )
ORDER BY p.name;

-- else

SELECT p.name
FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON po.menu_id = m.id
WHERE p.gender = 'female' AND m.pizza_name = 'pepperoni pizza'

INTERSECT

SELECT p.name
FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON po.menu_id = m.id
WHERE p.gender = 'female' AND m.pizza_name = 'cheese pizza'

ORDER BY name;