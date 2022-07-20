DROP TABLE IF EXISTS abilities;

CREATE TABLE abilities (
    id integer PRIMARY KEY,
    identifier varchar(64) UNIQUE NOT NULL,
    generation_id integer NOT NULL,
    is_main_series boolean NOT NULL
);

COPY abilities FROM '/var/lib/pokeapi/abilities.csv' DELIMITER ',' CSV HEADER;