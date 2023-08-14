SELECT c.Name, SUM(ol.Quantity * ol.price) 'Total Orders'
from customers c 
JOIN orders o 
on c.id = o.CustomerId
JOIN OrderLines ol on o.Id = OrdersId
where c.id = 42s
GROUP by c.Name



INSERT Customers (Name, City, State) VALUEs ('megan', 'newark', 'oh')

INSERT Orders (CustomerId, Description) VALUES (43, 'Megans order')

INSERT OrderLines (OrdersId, Product, Description, Quantity, Price) VALUES
                    (27, 'Echo', 'Amazon Echo', 1, 100),
                    (27, 'echodot', 'amazon echo dot', 2, 50),
                    (27, 'echoshow', 'amazon echoshow', 1, 600)