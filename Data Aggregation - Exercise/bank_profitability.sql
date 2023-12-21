SELECT
    deposit_group,
    is_deposit_expired,
    FLOOR(AVG(deposit_interest)) as "Deposit Interest"
FROM
    wizard_deposits
WHERE
    deposit_expiration_date > '1985-01-01'::date
GROUP BY
    deposit_group, is_deposit_expired
ORDER BY
    deposit_group desc, is_deposit_expired;