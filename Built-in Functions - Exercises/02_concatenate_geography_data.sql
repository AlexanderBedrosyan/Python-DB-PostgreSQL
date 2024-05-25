CREATE VIEW "view_continents_countries_currencies_details" AS
SELECT
    CONCAT(TRIM(con.continent_name), ': ', TRIM(con.continent_code)) AS "continent_details",
    CONCAT_WS(' - ', cou.country_name, cou.capital, cou.area_in_sq_km, 'km2') AS "country_information",
    CONCAT(curr.description, ' (', curr.currency_code, ')') AS "currencies"
FROM
    continents AS con,
    countries AS cou,
    currencies AS curr
WHERE
    con.continent_code = cou.continent_code
    AND
    cou.currency_code = curr.currency_code
ORDER BY
    country_information, currencies
;