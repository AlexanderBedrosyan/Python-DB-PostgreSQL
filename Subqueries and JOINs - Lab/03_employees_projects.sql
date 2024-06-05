SELECT
    e.employee_id,
    CONCAT_WS(' ', e.first_name, e.last_name) AS full_name,
    ep.project_id,
    p.name
FROM
    employees AS e
JOIN
    employees_projects AS ep
ON
    e.employee_id = ep.employee_id
JOIN
    projects AS p
ON
    ep.project_id = p.project_id
WHERE
    ep.project_id = 1
;