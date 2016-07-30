1.
```sql
INSERT INTO expenses (amount, memo, created_on)
  VALUES (9999.99, 'largest', NOW());

INSERT INTO expenses (amount, memo, created_on)
  VALUES (10000.00, 'not allowed', NOW());
```
the second insert statement is not allowed since it contains more that 6 precision digits.


2.
```sql
INSERT INTO expenses (amount, memo, created_on)
  VALUES (-9999.99, 'largest', NOW());

INSERT INTO expenses (amount, memo, created_on)
  VALUES (-10000.00, 'not allowed', NOW());
```
same as above, the second statement is not allowed due to too many digits


3.
```sql
ALTER TABLE expenses ADD CONSTRAINT positive_amount CHECK (amount > 0);
```
