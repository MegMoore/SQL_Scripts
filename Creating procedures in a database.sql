create or ALTER PROCEDURE ListAllVendors
AS
BEGIN
    SELECT vendorname as Name, vendorCity as City, VendorState as State
    From Vendors;

END
go
EXEC ListAllVendors