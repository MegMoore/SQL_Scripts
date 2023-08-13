--ch 3.4 Write a select column that returns three columns.
SELECT InvoiceTotal, InvoiceTotal * .01 as '10%', InvoiceTotal + (InvoiceTotal * .01) as 'Plus 10%'
From Invoices 
WHERE InvoiceTotal > 1000
ORDER BY InvoiceTotal desc