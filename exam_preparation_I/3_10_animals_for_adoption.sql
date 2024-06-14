SELECT
    a.name,
    to_char(a.birthdate, 'YYYY') AS birth_year,
    at.animal_type
FROM
    animals AS a
JOIN
    animal_types AS at
ON
    a.animal_type_id = at.id
WHERE
    AGE('2022-01-01', a.birthdate) < INTERVAL '5 years' AND at.animal_type <> 'Birds' AND a.owner_id IS NULL
ORDER BY
    a.name
;