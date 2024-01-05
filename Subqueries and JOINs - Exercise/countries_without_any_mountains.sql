SELECT
    COUNT(no_mountains) AS countries_without_mountains
FROM
    (SELECT
         c.country_code
     FROM
         countries AS c
        LEFT JOIN mountains_countries AS m
        ON c.country_code = m.country_code
     WHERE
         m.mountain_id IS NULL) AS no_mountains;