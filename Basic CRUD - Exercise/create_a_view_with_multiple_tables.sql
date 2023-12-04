CREATE VIEW view_addresses AS
    SELECT
        CONCAT_WS(' ', first_name, last_name) AS "full name",
        employees.department_id,
        CONCAT_WS(' ', number, street) AS "Address"
    FROM
        employees
    JOIN
        addresses ON employees.address_id = addresses.id
    ORDER BY
        "Address";