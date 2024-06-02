SELECT
    deposit_group,
    is_deposit_expired,
    FLOOR(AVG(deposit_interest)) AS deposit_interest
FROM
    wizard_deposits
WHERE
    deposit_start_date > '1985-01-01'
GROUP BY
    is_deposit_expired, deposit_group
ORDER BY
    deposit_group DESC
;