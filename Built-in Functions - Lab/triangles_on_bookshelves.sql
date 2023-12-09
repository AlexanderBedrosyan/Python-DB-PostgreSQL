SELECT
    id,
    CAST((side * height) / 2 AS NUMERIC) AS "area"
FROM
    triangles
ORDER BY
    id;