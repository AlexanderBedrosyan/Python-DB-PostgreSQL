CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(searched_volunteers_department VARCHAR(30))
RETURNS INTEGER
AS
$$
    DECLARE
        volunteers_total INTEGER;
    BEGIN
        SELECT
            COUNT(v.name) INTO volunteers_total
        FROM
            volunteers AS v
        JOIN
            volunteers_departments AS vd
        ON
            v.department_id = vd.id
        WHERE
            department_name = searched_volunteers_department
        ;

        RETURN volunteers_total;
    END;
$$
LANGUAGE plpgsql;