SELECT
    c.id AS car_id,
    c.make,
    c.mileage,
    COUNT(co.id) AS count_of_courses,
    ROUND(AVG(CO.bill), 2) AS average_bill
FROM
    cars AS c
LEFT JOIN
    courses AS co
ON
    c.id = co.car_id
GROUP BY
    c.id, c.make, c.id, c.make, c.model
HAVING
    COUNT(co.id) != 2
ORDER BY
    count_of_courses DESC, car_id
;