SELECT
    SUBSTRING(first_name, 1, 2) as initials,
    COUNT(first_name) as "user_count"
FROM
    users
GROUP BY
    initials
ORDER BY
    user_count desc,
    initials;