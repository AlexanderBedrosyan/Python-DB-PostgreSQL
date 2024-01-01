SELECT
    e.employee_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    p.project_id,
    p.name AS project_name
FROM
    employees as e
        JOIN employees_projects AS em
            ON e.employee_id = em.employee_id
        JOIN projects AS p
            ON EM.project_id = p.project_id
WHERE
    p.project_id = 1;