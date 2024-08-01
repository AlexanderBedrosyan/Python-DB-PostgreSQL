SELECT
    c.id,
    CONCAT_WS(' ', c.first_name, c.last_name) AS creator_name,
    c.email
FROM
    creators AS c
LEFT JOIN
    creators_board_games AS cbg
ON
    cbg.creator_id = c.id
WHERE
    cbg.board_game_id is Null
ORDER BY 
    creator_name
;