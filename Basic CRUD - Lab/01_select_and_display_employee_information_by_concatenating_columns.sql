SELECT
    id,
    CONCAT_WS(' ', first_name, last_name) AS "Full Name",
    job_title AS "Job Title"
FROM
    employees;