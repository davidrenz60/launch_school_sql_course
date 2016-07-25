1.
`$ psql -d database_name < films2.sql`

2.
```sql
ALTER TABLE films ALTER COLUMN title SET NOT NULL;
ALTER TABLE films ALTER COLUMN year SET NOT NULL;
ALTER TABLE films ALTER COLUMN genre SET NOT NULL;
ALTER TABLE films ALTER COLUMN director SET NOT NULL;
ALTER TABLE films ALTER COLUMN duration SET NOT NULL;
```


3.
not null now appears in the constraints COLUMN


4.
```sql
ALTER TABLE films ADD CONSTRAINT unique_title UNIQUE (title);
```


5.
It is added as an index displayed below the schema

6.
```sql
ALTER TABLE films DROP CONSTRAINT unique_title;
```

7.
```sql
ALTER TABLE films ADD CONSTRAINT title_length CHECK (length(title) >= 1);
```


8.
`new row for relation "films" violates check constraint "title_length"`


9.
It appears as a CHECK constraint below the table
```Check constraints:
    "title_length" CHECK (length(title::text) >= 1)
```

10.
```sql
ALTER TABLE films DROP CONSTRAINT title_length;
```

11.
```sql
ALTER TABLE films ADD CONSTRAINT year_range CHECK (year BETWEEN 1900 AND 2100);
```

12.
as a check constraint

13.
```sql
ALTER TABLE films ADD CONSTRAINT director_name
  CHECK (length(director) >= 3 AND position(' ' in director) > 0);
```

14.
as a check constraint

15.
```sql
UPDATE films SET director = 'Johnny' WHERE title = 'Die Hard';
```
`ERROR:  new row for relation "films" violates check constraint "director_name"`


16.
Data Type + optional length limitation
NOT NULL
Constraints

17.
yes, it is possible to define a default value that violates check Constraints

```sql
ALTER TABLE films ALTER COLUMN director SET DEFAULT 'noname';
INSERT INTO films (title, year, genre, duration) VALUES ('some movie', 1980, 'action', 120);
```
`ERROR:  new row for relation "films" violates check constraint "director_name"`

18.
`\d tablename`
