CREATE OR REPLACE FUNCTION fn_cash_in_users_games(
	game_name VARCHAR(50)
)
RETURNS TABLE (
    total_cash NUMERIC
)
AS
$$
BEGIN
    RETURN QUERY
    SELECT ROUND(SUM(ug.cash)::NUMERIC, 2) AS total_cash
    FROM (
        SELECT cash, ROW_NUMBER() OVER (ORDER BY cash DESC) AS row_num
        FROM users_games ug
        WHERE ug.game_id = (SELECT id FROM games WHERE "name" = game_name)
    ) AS ug
    WHERE ug.row_num % 2 = 1;
END;
$$ LANGUAGE plpgsql;