DROP TABLE IF EXISTS ability_names;

CREATE TABLE ability_names (
    id serial PRIMARY KEY,
    ability_id integer NOT NULL,
    local_language_id integer NOT NULL,
    name varchar(64) NOT NULL
);

COPY ability_names(
    ability_id,
    local_language_id,
    name
) FROM '/var/lib/pokeapi/ability_names.csv' DELIMITER ',' CSV HEADER;