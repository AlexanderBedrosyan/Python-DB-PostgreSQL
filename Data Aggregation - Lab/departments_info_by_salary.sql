SELECT
    department_id,
    COUNT(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;