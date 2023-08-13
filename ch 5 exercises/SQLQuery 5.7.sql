SELECT vendorName, AccountDescription, COUNT(*) as LineItemCount, sum(InvoiceLineItemAmount) as LineItemSum
FROM Vendors v
    JOIN invoices i 
        on v.vendorId = i.vendorId
    join InvoiceLineItems li 
        on i.invoiceId = li.invoiceId
    JOIN GLAccounts g 
        on li.AccountNo = g.AccountNo
GROUP BY VendorName, AccountDescription
ORDER BY VendorName, AccountDescription;
