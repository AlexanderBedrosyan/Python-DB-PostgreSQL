SELECT
    CASE
        WHEN 11 <= age AND age <= 20 THEN '[11-20]'
        WHEN 21 <= age AND age <= 30 THEN '[21-30]'
        WHEN 31 <= age AND age <= 40 THEN '[31-40]'
        WHEN 41 <= age AND age <= 50 THEN '[41-50]'
        WHEN 51 <= age AND age <= 60 THEN '[51-60]'
        WHEN 61 <= age THEN '[61+]'
    END AS "age_group",
    COUNT(magic_wand_creator)
FROM
    wizard_deposits
GROUP BY
    age_group
ORDER BY
    age_group;