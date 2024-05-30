SELECT
    e.id,
    e.first_name,
    e.last_name,
    e.salary,
    e.department_id,
    CASE e.department_id
        WHEN 1 THEN 'Management'
        WHEN 2 THEN 'Kitchen Staff'
        WHEN 3 THEN 'Service Staff'
        ELSE 'Other'
    END AS "department_name"
FROM
    employees AS e,
    departments AS d
WHERE
    e.department_id = d.id;