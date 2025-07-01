--Please make a select statement which returns names , ages for all women from the city ‘Kazan’. Yep, and please sort result by name.

SELECT id, "name", age, gender, address
FROM public.person
where address like 'Kazan' AND gender = 'female' order by "name" ;