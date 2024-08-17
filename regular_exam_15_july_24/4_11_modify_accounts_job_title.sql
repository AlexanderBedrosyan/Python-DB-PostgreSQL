CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
AS
$$  DECLARE
    BEGIN
        UPDATE accounts
        SET job_title = CONCAT('(Remote) ', job_title)
        WHERE id IN (
            SELECT
                account_id
            FROM
                addresses
            WHERE
                street = address_street AND town = address_town
            );
    END;
$$
LANGUAGE  plpgsql;