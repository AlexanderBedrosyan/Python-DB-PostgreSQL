SELECT
    o.name,
    COUNT(a.name) as count_of_animals
FROM
    owners AS o
JOIN
    animals AS a
ON
    o.id = a.owner_id
GROUP BY
    o.name
ORDER BY
    count(a.name) DESC, o.name
LIMIT
    5
;