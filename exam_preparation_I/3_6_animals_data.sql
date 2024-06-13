SELECT
    a.name,
    at.animal_type,
    to_char(a.birthdate, 'DD.MM.YYYY') AS birthdate
FROM
    animals AS a
JOIN
    animal_types AS at
ON
    a.animal_type_id = at.id
ORDER BY
    a.name
;