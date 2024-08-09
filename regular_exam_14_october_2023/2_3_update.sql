UPDATE coaches
SET salary = salary * coach_level
WHERE
    LOWER(first_name) LIKE 'c%' AND id IN (SELECT DISTINCT coach_id FROM players_coaches where player_id > 0);