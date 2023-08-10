
--ch 3.4 Write a select column that returns three columns.
SELECT InvoiceTotal, InvoiceTotal * .01 as '10%',
From Invoices;