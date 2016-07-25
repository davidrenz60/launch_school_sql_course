1.
`$ create db residents`

2.
`$ psql -d residents < residents_with_data.sql`

3.
```sql
SELECT state, COUNT(id) FROM  people GROUP BY state ORDER BY count  DESC LIMIT 10;
```

4.
```sql
SELECT split_part(email, '@', 2) AS domain, COUNT(id) FROM people
  GROUP BY domain ORDER BY count DESC;
```

other method:

```sql
substr(email, strpos(email, '@') + 1) as domain
```

5.
```sql
DELETE from people WHERE id = 3999;
```

6.
```sql
DELETE from people WHERE state = 'CA';
```

7.
```sql
UPDATE people SET given_name = upper(given_name) WHERE email LIKE '%teleworm.us';
```

8.
```sql
DELETE FROM people
```
