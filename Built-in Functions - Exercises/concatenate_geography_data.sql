CREATE VIEW view_continents_countries_currencies_details AS
SELECT
    CONCAT_WS(': ', cont.continent_name, cont.continent_code) AS "Continent Details",
    CONCAT_WS(' - ', countr.country_name, countr.capital, countr.area_in_sq_km, 'km2') AS "Country Information",
    CONCAT(curr.description, ' (', curr.currency_code, ')') AS "Currencies"
FROM
    continents cont,
    countries countr,
    currencies curr
WHERE
    cont.continent_code = countr.continent_code
    AND
    countr.currency_code = curr.currency_code
ORDER BY
    "Country Information", "Currencies";