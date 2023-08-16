CREATE or ALTER UpdateProduct
    @PartNbr VARCHAR(30) = NULL,
    @Name VARCHAR(30) = null,
    @Unit VARCHAR(30) = null,
    @VendorName VARCHAR(50) = NULL
AS
BEGIN


    SELECT @VendorId = Id
        FROM Vendors
        WHERE Name LIKE @VendorName + '_%'

            
    update Products (PartNbr, Name, Unit, VendorId)
        VALUES (@PartNbr, @Name, @Unit, @VendorId);

    RETURN 0

END