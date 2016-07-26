1.
```sql
psql -d films < films4.sql
```


2.
```sql
INSERT INTO films (title, year, genre, director, duration)
  VALUES ('The Bourne Identity', 2002, 'espionage', 'Doug Liman', 118);
INSERT INTO films (title, year, genre, director, duration)
  VALUES ('Wayne''s World', 1992, 'comedy', 'Penelope Spheeris', 95);
```


3.
```sql
SELECT DISTINCT genre FROM films;
```


4.
```sql
SELECT genre FROM films GROUP BY genre;
```


5.
```sql
SELECT ROUND(AVG(duration)) AS avg_duration FROM films;
```


6.
```sql
SELECT genre, round(AVG(duration)) AS avg_duration FROM films GROUP BY genre;
```


7.
```sql
SELECT year / 10 * 10 AS decade, ROUND(AVG(duration)) AS avg_duration FROM films
  GROUP BY decade ORDER BY decade;
```


8.
```sql
SELECT *  FROM films WHERE director LIKE 'John%';
```


9.
```sql
SELECT genre, COUNT(id) FROM films GROUP BY genre ORDER BY count DESC;
```


10.
```sql
SELECT (year / 10 * 10) AS decade, string_agg(title, ', ') AS films
  FROM films GROUP BY decade, genre ORDER BY  decade;
```

11.
```sql
SELECT genre, SUM(duration) AS total_duration FROM films
  GROUP BY genre ORDER BY total_duration;
```
