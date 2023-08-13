SELECT VendorName,
       COUNT(DISTINCT li.AccountNo) AS [# of Accounts] --Distint allows for more than one
FROM Vendors v 
  JOIN Invoices i
    ON v.VendorID = i.VendorID
  JOIN InvoiceLineItems li
    ON i.InvoiceID = li.InvoiceID
GROUP BY VendorName
HAVING COUNT(DISTINCT li.AccountNo) > 1
ORDER BY VendorName;
