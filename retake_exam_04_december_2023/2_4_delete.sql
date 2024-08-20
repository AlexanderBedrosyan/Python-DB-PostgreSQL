DELETE FROM ingredients
WHERE
    distributor_id IN (
        SELECT 
            id
        FROM
            distributors
        WHERE
            name LIKE 'L%'
        );
DELETE FROM distributors
WHERE name LIKE 'L%';