1.
`psql -d theater < theater_full.sql`


2.
```sql
SELECT COUNT(*) FROM tickets;
```

3.
```sql
SELECT COUNT(DISTINCT customer_id) FROM tickets;
```

4.
```sql
SELECT COUNT(DISTINCT tickets.customer_id) / COUNT(DISTINCT customers.id)::float * 100 AS percent
  FROM customers
  LEFT OUTER JOIN tickets ON tickets.customer_id = customers.id;
```

5.
```sql
SELECT events.name, COUNT(tickets.id)
  FROM events LEFT OUTER JOIN tickets on tickets.event_id = events.id
  GROUP BY events.id
  ORDER BY COUNT(tickets.id) DESC;
```

6.
```sql
SELECT customers.id, customers.email, COUNT(DISTINCT tickets.event_id)
  FROM customers LEFT OUTER JOIN tickets on tickets.customer_id = customers.id
  GROUP BY customers.id
  HAVING COUNT(DISTINCT tickets.event_id) > 2;
```

7.
```sql
SELECT events.name AS event, events.starts_at, sections.name AS section, seats.row, seats.number AS seat
  FROM tickets
    INNER JOIN events on tickets.event_id = events.id
    INNER JOIN customers ON tickets.customer_id = customers.id
    INNER JOIN seats ON tickets.seat_id = seats.id
    INNER JOIN sections ON seats.section_id = sections.id
WHERE customers.email = 'gennaro.rath@mcdermott.co';
```
