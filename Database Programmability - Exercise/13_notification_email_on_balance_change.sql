CREATE TABLE notification_emails (
    id SERIAL PRIMARY KEY,
    recipient_id INT,
    subject VARCHAR(255),
    body TEXT
);


CREATE OR REPLACE FUNCTION trigger_fn_send_email_on_balance_change()
RETURNS TRIGGER
AS
$$
DECLARE
	account_id INT := NEW.account_id;
	old_sum NUMERIC(10, 4) := NEW.old_sum;
	new_sum NUMERIC(10, 4) := NEW.new_sum;
	email_subject VARCHAR(255);
	email_body TEXT;
BEGIN
	email_subject := concat('Balance change for account: ',
							' ',
							account_id);
	email_body := concat_ws(' ', 'On ', NOW(),
							' your balance was changed from ',
							old_sum, ' to ', new_sum, '.');

	INSERT INTO notification_emails (recipient_id, subject, body)
	VALUES (account_id, email_subject, email_body);

	RETURN NEW;
END;
$$
LANGUAGE plpgsql;


CREATE TRIGGER tr_send_email_on_balance_change
AFTER UPDATE ON logs
FOR EACH ROW
WHEN (NEW.new_sum <> OLD.new_sum)
EXECUTE FUNCTION trigger_fn_send_email_on_balance_change();