SELECT g.AccountNo, g.AccountDescription
FROM GLAccounts g
left JOIN InvoiceLineItems il 
    ON il.AccountNo = g.AccountNo
WHERE il.AccountNo IS NULL
ORDER BY AccountNo

--testing the code
/*SELECT * 
from InvoiceLineItems
WHERE AccountNo = 100*/