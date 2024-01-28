CREATE OR REPLACE PROCEDURE sp_deposit_money(account_id INT, money_amount NUMERIC)
LANGUAGE plpgsql
AS
    $$
    BEGIN
        UPDATE accounts
        SET balance = ROUND(balance + money_amount, 4)
        WHERE
            accounts.id = account_id;
    END
    $$;