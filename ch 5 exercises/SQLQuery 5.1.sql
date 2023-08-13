SELECT VendorID, SUM(PaymentTotal + VendorID) as PaymentSum
FROM Invoices
GROUP by VendorID