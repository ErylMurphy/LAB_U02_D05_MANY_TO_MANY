\c film_db;

DELETE FROM characters;
DELETE FROM actors;
DELETE FROM films;

INSERT INTO actors (name) VALUES ('Daniel Kaluuya');
INSERT INTO actors (name) VALUES ('Allison Williams');
INSERT INTO films (name, year) VALUES ('Get Out', 2017);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Chris',
  (SELECT id FROM actors WHERE name='Daniel Kaluuya'),
  (SELECT id FROM films WHERE name='Get Out')
);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Rose',
  (SELECT id FROM actors WHERE name='Allison Williams'),
  (SELECT id FROM films WHERE name='Get Out')
);

INSERT INTO actors (name) VALUES ('Daniel Day Lewis');
INSERT INTO films (name, year) VALUES ('Phantom Thread', 2017);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Reynolds Woodcock',
  (SELECT id FROM actors WHERE name='Daniel Day Lewis'),
  (SELECT id FROM films WHERE name='Phantom Thread')
);

INSERT INTO actors (name) VALUES ('Armie Hammer');
INSERT INTO films (name, year) VALUES ('Call Me By Your Name', 2017);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Oliver',
  (SELECT id FROM actors WHERE name='Armie Hammer'),
  (SELECT id FROM films WHERE name='Call Me By Your Name')
);

INSERT INTO actors (name) VALUES ('Harrison Ford');
INSERT INTO films (name, year) VALUES ('Blade Runner', 1982);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Deckard',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Blade Runner')
);

INSERT INTO actors (name) VALUES ('Gal Gadot');
INSERT INTO actors (name) VALUES ('Chris Pine');
INSERT INTO films (name, year) VALUES ('Wonder Woman', 2017);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Wonder Woman',
  (SELECT id FROM actors WHERE name='Gal Gadot'),
  (SELECT id FROM films WHERE name='Wonder Woman')
);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Steve Trevor',
  (SELECT id FROM actors WHERE name='Chris Pine'),
  (SELECT id FROM films WHERE name='Wonder Woman')
);

INSERT INTO films (name, year) VALUES ('Star Wars: The Force Awakens', 2015);

INSERT INTO films (name, year) VALUES ('Star Wars: A New Hope', 1977);
INSERT INTO films (name, year) VALUES ('Star Wars: The Empire Strikes Back', 1981);
INSERT INTO films (name, year) VALUES ('Star Wars: Return of the Jedi', 1983);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Han Solo',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Star Wars: The Force Awakens')
);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Han Solo',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Star Wars: A New Hope')
);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Han Solo',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Star Wars: The Empire Strikes Back')
);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Han Solo',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Star Wars: Return of the Jedi')
);

INSERT INTO films (name, year) VALUES ('Raiders of the Lost Ark', 1981);

INSERT INTO characters (name, actor_id, film_id) VALUES (
  'Indiana Jones',
  (SELECT id FROM actors WHERE name='Harrison Ford'),
  (SELECT id FROM films WHERE name='Raiders of the Lost Ark')
);
