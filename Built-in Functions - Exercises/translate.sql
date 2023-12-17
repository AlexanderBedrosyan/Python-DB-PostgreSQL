SELECT
    capital,
    TRANSLATE(capital, 'áãåçéíñóú', 'aaaceinou') as "translated_name"
FROM
    countries