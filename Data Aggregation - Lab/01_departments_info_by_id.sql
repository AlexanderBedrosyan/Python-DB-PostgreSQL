SELECT
    department_id,
    COUNT(*)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id
;