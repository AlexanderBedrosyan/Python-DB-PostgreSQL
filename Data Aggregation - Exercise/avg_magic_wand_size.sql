SELECT
    CAST(ROUND(AVG(magic_wand_size), 3) as DECIMAL(10, 3))
FROM
    wizard_deposits;