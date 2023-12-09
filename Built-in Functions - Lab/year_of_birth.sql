SELECT
    first_name,
    last_name,
    EXTRACT(YEAR FROM born)
FROM
    authors
