1.
`$ create db films`
`psql -d films < films7.sql`


2.
```sql
ALTER TABLE films ADD COLUMN id serial PRIMARY KEY;
```

3.
```sql
CREATE TABLE directors_films (
  id serial PRIMARY KEY,
  director_id integer REFERENCES directors (id),
  film_id integer REFERENCES films (id)
);
```


4.
```sql
INSERT INTO directors_films (director_id, film_id) VALUES (1, 1);
INSERT INTO directors_films (director_id, film_id) VALUES (2, 2);
INSERT INTO directors_films (director_id, film_id) VALUES (3, 3);
INSERT INTO directors_films (director_id, film_id) VALUES (4, 4);
INSERT INTO directors_films (director_id, film_id) VALUES (5, 5);
INSERT INTO directors_films (director_id, film_id) VALUES (6, 6);
INSERT INTO directors_films (director_id, film_id) VALUES (3, 7);
INSERT INTO directors_films (director_id, film_id) VALUES (7, 8);
INSERT INTO directors_films (director_id, film_id) VALUES (8, 9);
INSERT INTO directors_films (director_id, film_id) VALUES (4, 10);
```


5.
```sql
ALTER TABLE films DROP COLUMN director_id;
```


6.
```sql
SELECT films.title, directors.name FROM films
  INNER JOIN directors_films ON films.id = directors_films.film_id
  INNER JOIN directors ON directors.id = directors_films.director_id
  ORDER BY films.title;
```


7.
```sql
INSERT INTO directors (name) VALUES ('Joel Coen');
INSERT INTO directors (name) VALUES ('Ethan Coen');
INSERT INTO directors (name) VALUES ('Frank Miller');
INSERT INTO directors (name) VALUES ('Robert Rodriguez');

INSERT INTO films (title, year, genre, duration) VALUES ('Fargo', 1996, 'comedy', 98);
INSERT INTO films (title, year, genre, duration) VALUES ('No Country for Old Men', 2007, 'western', 122);
INSERT INTO films (title, year, genre, duration) VALUES ('Sin City', 2005, 'crime', 124);
INSERT INTO films (title, year, genre, duration) VALUES ('Spy Kids', 2001, 'scifi', 88);

INSERT INTO directors_films (film_id, director_id) VALUES (11, 9);
INSERT INTO directors_films (film_id, director_id) VALUES (12, 9);
INSERT INTO directors_films (film_id, director_id) VALUES (12, 10);
INSERT INTO directors_films (film_id, director_id) VALUES (13, 11);
INSERT INTO directors_films (film_id, director_id) VALUES (13, 12);
INSERT INTO directors_films (film_id, director_id) VALUES (14, 12);
```

8.
```sql
SELECT directors.name as director, COUNT(directors_films.film_id) AS films
  FROM directors
  INNER JOIN directors_films ON directors.id = directors_films.director_id
  GROUP BY directors.name ORDER BY films DESC, directors.name;
```
