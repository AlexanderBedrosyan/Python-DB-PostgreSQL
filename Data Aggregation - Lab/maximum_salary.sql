SELECT
    department_id,
    MAX(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;