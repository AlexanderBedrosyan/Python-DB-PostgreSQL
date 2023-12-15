SELECT
    peak_name,
    SUBSTRING(peak_name, 1, 4) AS "Positive Left",
    CASE
        WHEN LENGTH(peak_name) > 4 THEN SUBSTRING(peak_name, 1, LENGTH(peak_name) - 4)
        ELSE ''
    END AS "Negative Left"
FROM
    peaks