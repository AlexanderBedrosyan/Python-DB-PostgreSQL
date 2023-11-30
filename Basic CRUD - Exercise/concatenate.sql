SELECT
    CONCAT(name, ' ', state) as "Cities Information",
    area as "Area (km2)"
FROM
    cities
ORDER BY
    id;