SELECT
    cl.full_name,
    COUNT(co.car_id) AS count_of_cars,
    SUM(co.bill) AS total_sum
FROM
    clients AS cl
JOIN
    courses AS co
ON
    cl.id = co.client_id
WHERE
    SUBSTRING(cl.full_name, 2, 1) = 'a'
GROUP BY
    full_name
HAVING
    COUNT(co.car_id) > 1
ORDER BY
    full_name
;