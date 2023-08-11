--ch 3.2 write select statement that returns 4 columns from the Invoices Table.
SELECT InvoiceNumber as Number, InvoiceTotal as Total, PaymentTotal + CreditTotal as Credits, InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices
where InvoiceTotal >= 500 
                    and InvoiceTotal <= 1000;