CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(id INT)
LANGUAGE plpgsql
AS
    $$
        BEGIN
            IF (SELECT salary
                FROM employees
                WHERE employee_id = id) IS NULL THEN
                ROLLBACK;
            ELSE
                UPDATE employees
                SET salary = salary * 1.05
                WHERE id = employee_id;
            END IF;
        END;
    $$;