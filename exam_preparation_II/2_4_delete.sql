DELETE FROM clients
WHERE id IN 
(SELECT
    c.id
FROM
    clients AS c
LEFT JOIN
    courses AS co
ON
    c.id = co.client_id
WHERE
    co.id IS NULL AND LENGTH(full_name) > 3
);