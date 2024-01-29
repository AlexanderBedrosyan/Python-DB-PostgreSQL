CREATE OR REPLACE PROCEDURE sp_retrieving_holders_with_balance_higher_than(searched_balance numeric)
LANGUAGE plpgsql
AS
    $$
    BEGIN
        FOR row_record IN (
            SELECT
                concat(first_name, ' ', last_name) AS full_name,
                SUM(a.balance)
            FROM
                account_holders AS ah
                JOIN accounts AS a
                ON ah.id = a.account_holder_id
            GROUP BY
                full_name
            HAVING
                SUM(a.balance) > searched_balance
        )
        LOOP
            RAISE NOTICE 'NOTICE: % - %', row_record.full_name, row_record.balance;
        end loop;
    END
    $$