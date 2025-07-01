SELECT
    p.id AS "person.id",
    p.name AS "person.name",
    p.age,
    p.gender,
    p.address,
    pz.id AS "pizzeria.id",
    pz.name AS "pizzeria.name",
    pz.rating
FROM
    person p
CROSS JOIN
    pizzeria pz
ORDER BY
    p.id ASC,
    pz.id ASC;