CREATE OR REPLACE PROCEDURE sp_withdraw_money(account_id INT, money_amount NUMERIC)
LANGUAGE plpgsql
AS
    $$
    DECLARE
        current_amount NUMERIC;
    BEGIN
        current_amount := (
        SELECT
            balance
        FROM
            accounts
        WHERE
            id = account_id);
        IF current_amount - money_amount >= 0 THEN
            UPDATE accounts
            SET balance = balance - money_amount
            WHERE id = account_id;
        ELSE
            RAISE NOTICE 'Insufficient balance to withdraw %', money_amount;
        end if;

    END;
    $$;