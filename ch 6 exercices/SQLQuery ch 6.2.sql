SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE paymentTotal > (
    SELECT AVG(PaymentTotal)
    FROM Invoices
    WHERE InvoiceTotal - PaymentTotal - CreditTotal <= 0
)
