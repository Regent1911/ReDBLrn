--Please make a select statement which returns the person's identifiers (without duplication) who visited pizzerias in a period from 6th of January 2022 to 9th of January 2022 (including all days) or visited pizzeria with identifier 2. Also include ordering clause by person identifier in descending mode.


SELECT DISTINCT person_id
FROM person_visits
where (visit_date BETWEEN '2022-01-06' AND '2022-01-09') 
   OR pizzeria_id = 2
order by person_id DESC;