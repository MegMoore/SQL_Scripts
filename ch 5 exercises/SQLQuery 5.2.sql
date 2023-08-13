/*SELECT SUM(PaymentTotal + VendorID) as PaymentSum, VendorName
FROM Vendors v, Invoices i
WHERE v.VendorID = i.VendorID*/

SELECT top 10 SUM(PaymentTotal + v.VendorID) as PaymentSum, VendorName
FROM Vendors v, Invoices i
WHERE v.VendorID = i.VendorID
GROUP BY VendorName