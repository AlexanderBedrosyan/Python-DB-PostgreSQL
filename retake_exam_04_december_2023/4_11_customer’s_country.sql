CREATE OR REPLACE PROCEDURE sp_customer_country_name(customer_full_name VARCHAR(50), OUT country_name VARCHAR(50))
AS
$$  DECLARE
    BEGIN
        SELECT 
            co.name INTO country_name
        FROM
            countries AS co
        JOIN
            customers AS c
        ON
            co.id = c.country_id
        WHERE 
            CONCAT_WS(' ', c.first_name, c.last_name) = customer_full_name
        ;
    END;
$$
LANGUAGE  plpgsql;