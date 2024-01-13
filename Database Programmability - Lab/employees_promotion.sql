CREATE OR REPLACE PROCEDURE sp_increase_salaries(department_name VARCHAR)
LANGUAGE plpgsql
AS
    $$
    BEGIN
        UPDATE employees
        SET salary = salary * 1.05
        WHERE department_id = (
            SELECT
                d.department_id
            FROM
                departments as d
            WHERE
                department_name = d.name
            );
    END;
    $$;