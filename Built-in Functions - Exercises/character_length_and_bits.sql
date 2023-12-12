SELECT
    CONCAT(m.mountain_range, ' ', p.peak_name) AS "Mountain Information",
    LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS "Characters Length",
    BIT_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS "Characters Length"
FROM
    mountains m,
    peaks p
WHERE
    m.id = p.mountain_id