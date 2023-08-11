--Write a SELECT staement that returns all columns from the vendor inner-joined with the invoices table.
SELECT *
FROM Vendors v
join Invoices i
    on v.VendorId = i.VendorID
