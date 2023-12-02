UPDATE employees
SET salary = salary + 1500,
    job_title = CONCAT_WS(' ', 'Senior', job_title)
WHERE hire_date >= '1998-01-01' and hire_date <= '2000-01-05';