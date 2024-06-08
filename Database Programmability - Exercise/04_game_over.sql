CREATE OR REPLACE FUNCTION fn_is_game_over(is_game_over BOOLEAN)
RETURNS table(name VARCHAR(50), game_type_id INTEGER, is_finished BOOLEAN)
AS
$$
    DECLARE
    BEGIN
        RETURN QUERY (
            SELECT
                g.name,
                g.game_type_id,
                g.is_finished
            FROM
                games AS g
            WHERE
                g.is_finished = is_game_over
        );
    END;
$$
LANGUAGE plpgsql;