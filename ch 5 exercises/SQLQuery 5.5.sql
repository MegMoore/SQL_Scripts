SELECT g.AccountDescription, COUNT(*) as LineItemCount, SUM(InvoiceLineItemAmount) as LineItemSum
from GLAccounts g
    JOIN InvoiceLineItems li
    on li.AccountNo = g.AccountNo
    JOIN Invoices i
    ON li.InvoiceID = i.InvoiceID
WHERE InvoiceDate BETWEEN '2022-10-01' AND '2022-12-31'
GROUP by g.AccountDescription
HAVING COUNT(*) > 1
ORDER by LineItemCount DESC