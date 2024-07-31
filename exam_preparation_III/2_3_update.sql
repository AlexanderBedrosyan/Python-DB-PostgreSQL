UPDATE players_ranges
SET max_players = max_players + 1
WHERE min_players BETWEEN 2 AND 2 and max_players BETWEEN 2 AND 2;
UPDATE board_games
SET name = CONCAT(name, ' V2')
WHERE release_year >= 2020;