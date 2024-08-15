CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INTEGER
AS
$$
    DECLARE
        count_photos INTEGER;
    BEGIN
        SELECT
            COUNT(ap.photo_id) INTO count_photos
        FROM
            accounts AS a
        JOIN
            accounts_photos AS ap
        ON
            a.id = ap.account_id
        WHERE
            a.username = account_username;