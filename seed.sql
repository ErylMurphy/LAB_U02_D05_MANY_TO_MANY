DROP DATABASE IF EXISTS actorfilm;
CREATE DATABASE actorfilm;

\c actorfilm;

CREATE TABLE actor (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE film (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE actor_film (
  id BIGSERIAL PRIMARY KEY,
  actor_id INTEGER REFERENCES actor(id),
  film_id INTEGER REFERENCES film(id)
);

INSERT INTO actor (name) VALUES ('Daniel Kaluuya');
INSERT INTO actor (name) VALUES ('Allison Williams');
INSERT INTO film (name) VALUES ('Get Out');

INSERT INTO actor_film (actor_id, film_id) VALUES (1,1);
INSERT INTO actor_film (actor_id, film_id) VALUES (2,1);

INSERT INTO actor (name) VALUES ('Daniel Day Lewis');
INSERT INTO film (name) VALUES ('Phantom Thread');

INSERT INTO actor_film (actor_id, film_id) VALUES (3,2);

INSERT INTO actor (name) VALUES ('Armie Hammer');
INSERT INTO film (name) VALUES ('Call Me By Your Name');

INSERT INTO actor_film (actor_id, film_id) VALUES (4,3);

INSERT INTO actor (name) VALUES ('Saoirse Ronan');
INSERT INTO film (name) VALUES ('Lady Bird');

INSERT INTO actor_film (actor_id, film_id) VALUES (5,4);

INSERT INTO actor (name) VALUES ('Harrison Ford');
INSERT INTO actor (name) VALUES ('Ryan Gosling');
INSERT INTO film (name) VALUES ('Blade Runner 2049');

INSERT INTO actor_film (actor_id, film_id) VALUES (6,5);
INSERT INTO actor_film (actor_id, film_id) VALUES (7,5);

INSERT INTO actor (name) VALUES ('Gal Gadot');
INSERT INTO actor (name) VALUES ('Chris Pine');
INSERT INTO film (name) VALUES ('Wonder Woman');

INSERT INTO actor_film (actor_id, film_id) VALUES (8,6);
INSERT INTO actor_film (actor_id, film_id) VALUES (9,6);
