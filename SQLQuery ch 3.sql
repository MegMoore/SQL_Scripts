--Ch 3.1 write select statement that return 3 columns from vendor table.
SELECT VendorContactFName, VendorContactLName, VendorName
from Vendors
ORDER BY VendorContactLName, VendorContactFName;

--ch 3.2 write select statement that returns 4 columns from the Invoices Table.
SELECT InvoiceNumber as Number, InvoiceTotal as Total, PaymentTotal + CreditTotal as Credits, InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices;

--ch3.3 Write a Select statement that returns one column from the Vendors table called Full Name.
SELECT VendorContactLName + ', ' + VendorContactFName as 'Full Name'
From Vendors
ORDER BY VendorContactLName, VendorContactFName;

--ch 3.4 Write a select column that returns three columns.
SELECT InvoiceTotal, InvoiceTotal * .01 as '10%',
From Invoices;