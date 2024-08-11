SELECT
    CONCAT_WS(' ', c.first_name, c.last_name) AS coach_full_name,
    CONCAT_WS(' ', p.first_name, p.last_name) AS player_full_name,
    t.name,
    s.passing,
    s.shooting,
    s.speed
FROM
    coaches AS c
JOIN
    players_coaches AS pc
ON
    c.id = pc.coach_id
JOIN
    players AS p
ON
    pc.player_id = p.id
JOIN
    teams AS t
ON
    p.team_id = t.id
JOIN
    skills_data AS s
ON
    p.skills_data_id = s.id
ORDER BY
    coach_full_name, player_full_name DESC
;