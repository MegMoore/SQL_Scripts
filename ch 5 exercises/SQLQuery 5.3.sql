SELECT VendorName, COUNT(*) as InvoiceCount, SUM(i.InvoiceTotal + i.VendorID) as InvoiceSum
FROM Vendors v, Invoices i
GROUP BY VendorName
ORDER by InvoiceSum DESC