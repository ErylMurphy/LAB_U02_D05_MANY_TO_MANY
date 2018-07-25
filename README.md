# Movies join tables lab

Create the database tables

```
psql -f schema.sql
```

Seed your database with film and actor data

```
psql -f seed.sql
```

Connect to the `film_db` database

```
psql
#= \c film_db
```

Browse the tables to see what data you have in them.

## Exercises

For the following exercises write a SQL statement that returns the desired data.

Find all the actors that were in Get Out.

> SELECT actors.name
  from actors
  JOIN characters on actors.id = characters.actor_id
  JOIN films on characters.film_id = films.id
  where films.name = 'Get Out';

Find the films that Han Solo was in.

> SQL SELECT films.name
  from films
  JOIN characters on films.id = characters.film_id
  where characters.name = 'Han Solo';

Find all the films that Harrison Ford was in.

>
SELECT films.name
  from films
  JOIN characters on films.id = characters.film_id
  JOIN actors on characters.actor_id = actors.id
  where actors.name = 'Harrison Ford';

Insert the film and actor data for two movies that you liked not in the database. Don't forget the JOIN table!

> 
INSERT INTO films VALUES (DEFAULT, 'The Shape of Water', 2018);
INSERT INTO actors VALUES (DEFAULT, 'Sally Hawkins');
INSERT INTO characters VALUES (DEFAULT, 'Mary', 8, 11);
