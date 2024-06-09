CREATE OR REPLACE PROCEDURE sp_transfer_money(sender_id INTEGER, receiver_id INTEGER, amount NUMERIC)
AS
$$  DECLARE
    BEGIN
        CALL sp_withdraw_money(sender_id, amount);
        CALL sp_deposit_money(receiver_id, amount);
    END;
$$
LANGUAGE  plpgsql;