1.
`$ createdb foreign-keys`
`$ psql -d foreign-keys < products_orders1.sql`


2.
```sql
INSERT INTO products (name) VALUES ('small bolt');
INSERT INTO products (name) VALUES ('large bolt');
INSERT INTO orders (product_id, quantity) VALUES (1, 10);
INSERT INTO orders (product_id, quantity) VALUES (1, 25);
INSERT INTO orders (product_id, quantity) VALUES (2, 15);
```


3.
```sql
SELECT orders.quantity, products.name FROM orders
  JOIN products ON products.id = orders.product_id;
```


4.
Yes, there is no foreign key constraint on the product_id.
```sql
INSERT INTO orders (quantity) VALUES (5);
```
this will insert into the table.


5.
```sql
ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;
```
This will cause an error, since there is already a null value in the table


6.
```sql
 DELETE FROM orders WHERE product_id IS NULL;
 ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;
 ```

 7.
 ```sql
 CREATE TABLE reviews (
   id serial PRIMARY KEY,
   body text NOT NULL,
   product_id integer REFERENCES products(id)
 );
 ```


 8.
 ```sql
 INSERT INTO reviews (body, product_id) VALUES ('a little small', 1);
 INSERT INTO reviews (body, product_id) VALUES ('very round!', 1);
 INSERT INTO reviews (body, product_id) VALUES ('could have been smaller', 2);
 ```


 9.
 false, you need to specify NOT NULL. In the case above, we were able to add an order without a product_id before adding the constraint. Also, you could now add a review without specifying a product_id.
