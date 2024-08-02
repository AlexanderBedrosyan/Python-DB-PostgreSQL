SELECT
    full_name,
    email,
    rating
FROM (
    SELECT
        CONCAT_WS(' ', c.first_name, c.last_name) AS full_name,
        c.email,
        bg.rating,
        ROW_NUMBER() OVER (PARTITION BY c.id ORDER BY bg.rating DESC) AS rn
    FROM
        creators AS c
    JOIN
        creators_board_games AS cbg
    ON
        c.id = cbg.creator_id
    JOIN
        board_games AS bg
    ON
        cbg.board_game_id = bg.id
    WHERE
        c.email LIKE '%.com'
) AS RankedGames
WHERE
    rn = 1
ORDER BY
    full_name;