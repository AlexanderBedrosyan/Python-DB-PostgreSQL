SELECT
    v.name AS volunteers,
    v.phone_number,
    TRIM(LTRIM(REPLACE(TRIM(v.address), ',', ''), 'Sofia')) AS address
FROM
    volunteers AS v
JOIN
    volunteers_departments AS vd
ON
    v.department_id = vd.id
WHERE
    vd.department_name = 'Education program assistant' and v.address LIKE '%Sofia%'
ORDER BY
    volunteers
;