1
```sql
CREATE SEQUENCE counter;
```


2.
```sql
SELECT nextval('counter');
```

3.
```sql
DROP SEQUENCE counter;
```

4.
```sql
CREATE SEQUENCE even_counter INCREMENT BY 2 START WITH 2;
```

5.
`regions_id_seq`


6.
```sql
ALTER TABLE films ADD COLUMN id serial PRIMARY KEY;
```

7.
`ERROR:  duplicate key value violates unique constraint "films_pkey"`


8.
`ERROR:  multiple primary keys for table "films" are not allowed`


9.
```sql
ALTER TABLE films DROP CONSTRAINT films_pkey;
```
