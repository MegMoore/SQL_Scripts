--ch 3.7 Write a select statement that determine the paymentdate column...
SELECT *
FROM Invoices
WHERE ((InvoiceTotal - PaymentTotal - CreditTotal <= 0) AND
                PaymentDate IS NULL) OR
      ((InvoiceTotal - PaymentTotal - CreditTotal > 0) AND
                PaymentDate IS NOT NULL);
