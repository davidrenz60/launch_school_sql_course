1.
```sql
INSERT INTO calls ("when", duration, contact_id) VALUES ('2016-01-18 14:47:00', 632, 6);
```

note: when is a keyword and needs to be escaped with double quotes when used as a column name.


2.
```sql
SELECT calls.when, calls.duration, contacts.first_name
  FROM calls LEFT JOIN contacts ON calls.contact_id = contacts.id
  WHERE contacts.first_name != 'William' AND contacts.last_name != 'Swift';
```

3.
```sql
INSERT INTO contacts (first_name, last_name, number)
  VALUES ('Merve', 'Elk', 6343511126);
INSERT INTO contacts (first_name, last_name, number)
  VALUES ('Sawa', 'Fyodorov', 6125594874);

INSERT INTO calls ("when", duration, contact_id)
  VALUES ('2016-01-17 11:52:00', 175, 26);
INSERT INTO calls ("when", duration, contact_id)
  VALUES ('2016-01-18 21:22:00', 79, 27);
```

4.
```sql
ALTER TABLE contacts ADD CONSTRAINT number_unique UNIQUE(number);
```
