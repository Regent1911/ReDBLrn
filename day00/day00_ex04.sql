--Please make a select statement which returns one calculated field with name ‘person_information’ in one string like described in the next sample:
--Anna (age:16,gender:'female',address:'Moscow')
--Finally, please add the ordering clause by calculated column in ascending mode. Please pay attention to quote symbols in your formula!

--I use the "Concat" function as used to mysql...
SELECT 
    concat(name, ' (age:', age, ',gender:''', gender, ''',address:''', COALESCE(address, 'null'), ''')') AS person_information
FROM 
    person
ORDER BY 
    person_information ASC;

--OR use || operator

SELECT 
    name || ' (age:' || age || ',gender:''' || gender || ''',address:''' || COALESCE(address, 'null') || ''')' AS person_information
FROM 
    person
ORDER BY 
    person_information ASC;