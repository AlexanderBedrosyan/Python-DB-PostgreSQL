SELECT
    employee_id,
    project_id
FROM
    employees_projects
WHERE
    (employee_id = 200 OR employee_id = 250)
    AND (project_id != 50 AND project_id != 100);