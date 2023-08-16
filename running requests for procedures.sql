CREATE or ALTER PROCEDURE ListInvoicesForVendor
    @VendorInvoice VARCHAR(30) = NULL
    as
    BEGIN
        IF @VendorInvoice is NULL
        BEGIN
            PRINT '@VendorInvoice must be a string';
            RETURN -1
        END

        SELECT i.* 
            FROM Vendors v
                JOIN Invoices i
                    ON v.Vendorname = i.InvoiceID
            WHERE v.Vendorname = @VendorInvoice;

        RETURN 0;
    END
    GO
    DECLARE @rc int;
    EXEC @rc = ListInvoicesForVendor;
    if @rc = 0
        PRINT 'Everything is good';
    if @rc = -1
        PRINT 'Must be a string';