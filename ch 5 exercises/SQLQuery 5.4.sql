SELECT g.AccountDescription, COUNT(*) as LineItemCount, SUM(InvoiceLineItemAmount) as LineItemSum
from GLAccounts g
    JOIN InvoiceLineItems li
    on li.AccountNo = g.AccountNo
GROUP by g.AccountDescription
HAVING COUNT(*) > 1
ORDER by LineItemCount DESC
