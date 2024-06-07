CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR
AS
$$
    DECLARE
        full_name VARCHAR;
    BEGIN
        IF first_name IS NULL OR last_name IS NULL THEN
            full_name = NULL;
        ELSE
            full_name := CONCAT_WS(' ', INITCAP(lower(first_name)), INITCAP(lower(last_name)));
        END IF;
        RETURN full_name;
    END;
$$
LANGUAGE plpgsql;