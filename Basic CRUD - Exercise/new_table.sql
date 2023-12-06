CREATE TABLE company_chart
AS SELECT
    CONCAT_WS(' ', first_name, last_name) AS "Full Name",
    job_title as "Job Title",
    department_id as "Department ID",
    manager_id as "Manager ID"
FROM
    employees;