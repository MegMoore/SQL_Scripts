SELECT * 
FROM Customers c
    JOIN Orders o 
    on c.id = o.CustomerId
WHERE id = 42
order by c.id DESC;

INSERT customers (name, city, state, sales, Active)
VALUES ('HAM', 'Newark', 'OH', default, default)

INSERT Order) 
VALUEs (42, 'Heirlooms and Moore')

SELECT top 3 *
FROM Customers
ORDER by id DESC