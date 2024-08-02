SELECT
    bg.name,
    bg.rating,
    c.name
FROM
    board_games AS bg
JOIN
    players_ranges AS pr
ON
    bg.players_range_id = pr.id
JOIN
    categories AS c
ON
    bg.category_id = c.id
WHERE
    (bg.rating > 7.00 and LOWER(bg.name) LIKE '%a%') OR (bg.rating > 7.50 AND pr.min_players BETWEEN 2 AND 5 AND pr.max_players BETWEEN 2 AND 5)
ORDER BY
    bg.name, bg.rating DESC
LIMIT
    5
;