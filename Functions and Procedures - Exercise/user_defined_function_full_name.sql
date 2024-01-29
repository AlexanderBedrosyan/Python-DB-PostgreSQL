CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR
AS
    $$
    BEGIN
    RETURN initcap(first_name) || ' ' || initcap(last_name);
    END;
    $$
LANGUAGE plpgsql;