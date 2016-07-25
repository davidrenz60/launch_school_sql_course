1.
a) This file will create a table named films in the specified database

b) NOTICE:  table "films" does not exist, skipping - this means that a films table does not exist, so the existing table does not need to be deleted.
DROP TABLE - skipped
CREATE TABLE - created the table named films
INSERT 0 1
INSERT 0 1
INSERT 0 1 - these are the result of the insert into statements

c) The first line will delete the films table if it exists already

2.
```sql
SELECT * FROM films;
```

3.
```sql
SELECT title FROM films WHERE LENGTH(title) < 12;
```

4.
```sql
ALTER TABLE films ADD COLUMN director varchar(255);
ALTER TABLE films ADD COLUMN duration integer;
```

5.
```sql
UPDATE films SET director = 'John McTiernan', duration = 132 WHERE title = 'Die Hard';
UPDATE films SET director = 'Michael Curtiz', duration = 102 WHERE title = 'Casablanca';
UPDATE films SET director = 'Francis Ford Coppola', duration = 113 WHERE title = 'The Conversation';
```

6.
```sql
INSERT INTO films VALUES ('1984', 1956, 'scifi', 'Michael Anderson', 90);
INSERT INTO films VALUES ('Tinker Tailor Soldier Spy', 2011, 'espionage', 'Tomas Alfredson', 127);
INSERT INTO films VALUES ('The Birdcage', 1996, 'comedy', 'Mike Nichols', 118);
```

7.
```sql
SELECT title, extract(year from current_date) - year As age FROM films ORDER BY age ASC;
```

8.
```sql
SELECT title, duration FROM films WHERE duration > 120 ORDER BY duration DESC;
```

9.
```sql
SELECT title FROM films ORDER BY duration DESC LIMIT 1;
```
