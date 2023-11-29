CREATE VIEW
    topPaidEmployee
AS
SELECT
    *
FROM
    employees
ORDER BY
    salary DESC
LIMIT(1);

SELECT
    *
FROM
    topPaidEmployee;