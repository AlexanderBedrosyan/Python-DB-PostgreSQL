SELECT
    id,
    concat(first_name, ' ', last_name) as "Full Name",
    job_title,
    salary
FROM
    employees
WHERE salary > 1000.00;