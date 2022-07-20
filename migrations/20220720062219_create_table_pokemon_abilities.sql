DROP TABLE IF EXISTS pokemon_abilities;

CREATE TABLE pokemon_abilities (
    id serial PRIMARY KEY,
    pokemon_id integer NOT NULL,
    ability_id integer NOT NULL,
    is_hidden boolean NOT NULL,
    slot integer NOT NULL
);

COPY pokemon_abilities(
    pokemon_id,
    ability_id,
    is_hidden,
    slot
) FROM '/var/lib/pokeapi/pokemon_abilities.csv' DELIMITER ',' CSV HEADER;
