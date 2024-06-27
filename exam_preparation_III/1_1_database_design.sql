CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE addresses(
    id SERIAL PRIMARY KEY,
    street_name VARCHAR(100) NOT NULL,
    street_number INTEGER NOT NULL CHECK(street_number > 0),
    town VARCHAR(30) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_code INTEGER NOT NULL CHECK(zip_code > 0)
);
CREATE TABLE publishers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    address_id INTEGER NOT NULL REFERENCES addresses(id) ON DELETE CASCADE ON UPDATE CASCADE,
    website VARCHAR(40),
    phone VARCHAR(20)
);
CREATE TABLE players_ranges(
    id SERIAL PRIMARY KEY,
    min_players INTEGER NOT NULL CHECK(min_players > 0),
    max_players INTEGER NOT NULL CHECK(max_players > 0)
);
CREATE TABLE creators(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL
);
CREATE TABLE board_games(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    release_year INTEGER NOT NULL CHECK(release_year > 0),
    rating NUMERIC(10, 2) NOT NULL,
    category_id INTEGER REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    publisher_id INTEGER REFERENCES publishers(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    players_range_id INTEGER REFERENCES players_ranges(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);
CREATE TABLE creators_board_games(
    creator_id INTEGER REFERENCES creators(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    board_game_id INTEGER REFERENCES board_games(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);