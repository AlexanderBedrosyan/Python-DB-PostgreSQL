CREATE OR REPLACE PROCEDURE sp_transfer_money(sender_id INT, receiver_id INT, amount NUMERIC)
LANGUAGE plpgsql
AS
    $$
    DECLARE
        sender_balance INT;
    BEGIN
        sender_balance := (
            SELECT
                balance
            FROM
                accounts
            WHERE
                sender_id = id
                              );
        CALL sp_deposit_money(receiver_id, amount);
        CALL sp_withdraw_money(sender_id, amount);
        IF sender_balance - amount < 0 THEN
            ROLLBACK ;
        END IF;

    END;
    $$