SELECT
    po.order_date AS action_date,
    po.person_id
FROM
    person_order po
WHERE EXISTS (
    SELECT 1
    FROM person_visits pv
    WHERE pv.visit_date = po.order_date
    AND pv.person_id = po.person_id
)
UNION
SELECT
    pv.visit_date AS action_date,
    pv.person_id
FROM
    person_visits pv
WHERE EXISTS (
    SELECT 1
    FROM person_order po
    WHERE po.order_date = pv.visit_date
    AND po.person_id = pv.person_id
)
ORDER BY
    action_date ASC,
    person_id DESC;