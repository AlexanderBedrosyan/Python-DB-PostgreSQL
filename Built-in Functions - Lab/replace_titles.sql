SELECT
    REPLACE(title, 'The', '***')
FROM
    books
WHERE
    title
LIKE
    'The%'
ORDER BY
    id;