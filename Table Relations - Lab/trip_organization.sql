SELECT
    v.driver_id,
    v.vehicle_type,
    CONCAT(c.first_name, ' ', c.last_name)
FROM
    campers as c JOIN vehicles AS v ON v.driver_id = c.id;