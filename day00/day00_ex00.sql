--Let’s make our first task. Please make a select statement which returns all person's names and person's ages from the city ‘Kazan’.

SELECT id, "name", age, gender, address
FROM public.person
where address like 'Kazan';