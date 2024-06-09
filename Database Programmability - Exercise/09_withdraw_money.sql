CREATE OR REPLACE PROCEDURE sp_withdraw_money(account_id INTEGER, money_amount NUMERIC(4))
AS
$$  DECLARE
        current_balance NUMERIC(10,2);
    BEGIN
        SELECT
            balance - money_amount INTO current_balance
        FROM
            accounts
        WHERE
            id = account_id;
        IF current_balance < 0 THEN
            ROLLBACK;
        ELSE
            UPDATE accounts
            SET balance = current_balance
            WHERE id = account_id;
        END IF;
    END;
$$
LANGUAGE  plpgsql;