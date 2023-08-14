SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE paymentTotal > ALL (
    SELECT top 50 PERCENT PaymentTotal
    FROM Invoices
     WHERE PaymentTotal <> 0
     ORDER BY PaymentTotal
)