begin TRANSACTION;

INSERT customers (name, city, state)
VALUES ('MAX', 'Mason', 'OH')

iNSERT Orders (, [echo shoe] price) 
VALUEs ('echo show', )

delete customers
where id in (41);

ROLLBACK TRANSACTION;
COMMIT TRANSACTION;

SELECT top 3 *
FROM Customers
ORDER BY id DESC;