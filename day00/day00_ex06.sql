/*
Please use SQL construction from Exercise 05 and add a new calculated column (use column's name ‘check_name’) with a check statement (a pseudo code for this check is presented below) in the SELECT clause.

if (person_name == 'Denis') then return true
    else return false

*/


SELECT 
    (SELECT name FROM person WHERE id = po.person_id) AS name,
    case
        when (SELECT name FROM person WHERE id = po.person_id) = 'Denis' then true
        else false
    end AS check_name
from
    person_order po
where 
    po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18
    AND po.order_date = '2022-01-07'
order by 
    name;