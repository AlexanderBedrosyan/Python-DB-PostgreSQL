SELECT
    project_name,
    CASE
        WHEN start_date is NULL and end_date is NULL THEN 'Ready for development'
        WHEN start_date is not NULL and end_date is NULL THEN 'In Progress'
        ELSE 'Done'
    END as "project_status"
FROM
    projects
WHERE
    project_name LIKE '%Mountain%'