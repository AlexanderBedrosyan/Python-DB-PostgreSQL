SELECT
    peak_name,
    CASE
        WHEN LENGTH(peak_name) >= 4 THEN RIGHT(peak_name, 4)
        ELSE peak_name
    END AS "Positive Right",
    CASE
        WHEN LENGTH(peak_name) > 4 THEN SUBSTRING(peak_name, 5)
        ELSE ''
    END AS "Negative Right"
FROM
    peaks;