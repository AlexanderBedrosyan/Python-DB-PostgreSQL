CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT
AS
    $$
    DECLARE
        employees_counter INT;
    BEGIN
        employees_counter = (SELECT
            COUNT(*)
        FROM towns AS t
            JOIN addresses as a
                USING (town_id)
            JOIN employees as e
                USING(address_id)
        WHERE
            t.name = town_name);
    RETURN employees_counter;
    END;
    $$
LANGUAGE plpgsql;

SELECT fn_count_employees_by_town('Sofia') AS count;