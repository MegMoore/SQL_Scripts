
SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - PaymentTotal - CreditTotal as Balance
FROM Vendors v
join Invoices i
    ON v.VendorID = i.VendorID
WHERe InvoiceTotal - PaymentTotal - CreditTotal > 0
ORDER by VendorName