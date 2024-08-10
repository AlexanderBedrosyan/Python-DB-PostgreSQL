SELECT
    p.id,
    CONCAT_WS(' ', p.first_name, p.last_name) AS full_name,
    p.age,
    p.position,
    p.salary,
    s.pace,
    s.shooting
FROM
    players AS p
JOIN
    skills_data AS s
ON
    p.skills_data_id = s.id
WHERE
    p.position = 'A' AND p.team_id is NULL AND (s.pace + s.shooting) > 130;