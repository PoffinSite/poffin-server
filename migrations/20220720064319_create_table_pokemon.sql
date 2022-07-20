DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
    id integer PRIMARY KEY,
    identifier varchar(64) UNIQUE NOT NULL,
    species_id integer NOT NULL,
    height integer NOT NULL,
    weight integer NOT NULL,
    base_experience integer,
    "order" integer,
    is_default boolean NOT NULL
);

COPY pokemon(
    id,
    identifier,
    species_id,
    height,
    weight,
    base_experience,
    "order",
    is_default
) FROM '/var/lib/pokeapi/pokemon.csv' DELIMITER ',' CSV HEADER;