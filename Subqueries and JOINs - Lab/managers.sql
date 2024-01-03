SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) as full_name,
    d.department_id,
    d.name as department_name
FROM
    departments as d
    JOIN employees as e
    ON d.manager_id = e.employee_id
ORDER BY
    e.employee_id
LIMIT 5;