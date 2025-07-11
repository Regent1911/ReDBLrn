/*
Please make a select statement that returns person names and pizzeria names based on the person_visits table with date of visit in a period from 07th of January to 09th of January 2022 (including all days) (based on internal query in FROM clause) .

Please take a look at the pattern of the final query.

SELECT (...) AS person_name ,  -- this is an internal query in a main SELECT clause
        (...) AS pizzeria_name  -- this is an internal query in a main SELECT clause
FROM (SELECT … FROM person_visits WHERE …) AS pv -- this is an internal query in a main FROM clause
ORDER BY ...

Please add a ordering clause by person name in ascending mode and by pizzeria name in descending mode
*/


select
    (select name from person where id = pv.person_id) AS person_name,
    (select name from pizzeria where id = pv.pizzeria_id) AS pizzeria_name
from 
    (select person_id, pizzeria_id from person_visits 
     where visit_date between '2022-01-07' AND '2022-01-09') AS pv
order by 
    person_name ASC,
    pizzeria_name DESC;