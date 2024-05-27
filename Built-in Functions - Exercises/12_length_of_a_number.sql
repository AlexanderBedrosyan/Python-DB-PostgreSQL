SELECT
    population,
    LENGTH(CAST(population AS varchar))
FROM
    countries;