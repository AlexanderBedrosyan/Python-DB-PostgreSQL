CREATE TABLE logs(
    id SERIAL PRIMARY KEY,
    account_id INTEGER,
    old_sum NUMERIC,
    new_sum NUMERIC
);


CREATE OR REPLACE FUNCTION trigger_fn_insert_new_entry_into_logs()
RETURNS TRIGGER
AS
$$
    DECLARE
    BEGIN
        insert into logs(account_id, old_sum, new_sum)
        values (old.id, old.balance, new.balance);

        RETURN NEW;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER tr_account_balance_change
AFTER UPDATE OF balance ON accounts
FOR EACH ROW
WHEN (OLD.balance <> NEW.balance)
EXECUTE FUNCTION trigger_fn_insert_new_entry_into_logs();