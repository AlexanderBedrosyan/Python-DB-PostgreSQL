CREATE OR REPLACE FUNCTION fn_creator_with_board_games(first_name_creator VARCHAR(30))
RETURNS INTEGER
AS
$$
    DECLARE
        num_of_games INTEGER;
    BEGIN
        SELECT
            COUNT(cbg.board_game_id) INTO num_of_games
        FROM
            creators AS c
        JOIN
            creators_board_games AS cbg
        ON
            c.id = cbg.creator_id
        WHERE
            c.first_name = first_name_creator
        ;
        
        RETURN num_of_games;
    END;
$$
LANGUAGE plpgsql;