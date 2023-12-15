SELECT
    companion_full_name,
    email
FROM
    users
WHERE
    lower(companion_full_name) LIKE '%and%'
    AND
    email NOT LIKE '%@gmail';