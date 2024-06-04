CREATE VIEW continent_currency_usage AS
WITH CurrencyCounts AS (
    SELECT
        continent_code,
        currency_code,
        COUNT(*) AS currency_usage
    FROM countries
    GROUP BY continent_code, currency_code
    HAVING COUNT(*) > 1
),
RankedCurrencyCounts AS (
    SELECT
        continent_code,
        currency_code,
        currency_usage,
        DENSE_RANK() OVER (PARTITION BY continent_code ORDER BY currency_usage DESC) AS rank
    FROM CurrencyCounts
)
SELECT
    continent_code,
    currency_code,
    currency_usage
FROM RankedCurrencyCounts
WHERE rank = 1
ORDER BY currency_usage DESC;