CREATE OR REPLACE FUNCTION fn_difficulty_level(level INTEGER)
RETURNS VARCHAR
AS
$$
    DECLARE
        result VARCHAR;
    BEGIN
        IF level <= 40 THEN
            result = 'Normal Difficulty';
        ELSIF level >= 41 AND level <= 60 THEN
            result = 'Nightmare Difficulty';
        ELSE
            result = 'Hell Difficulty';
        end if;
        RETURN result;
    END;
$$
LANGUAGE plpgsql;

SELECT
    user_id,
    level,
    cash,
    fn_difficulty_level(level)
FROM
    users_games
ORDER BY
    user_id
;