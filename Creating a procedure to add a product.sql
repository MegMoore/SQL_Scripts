CREATE or ALTER PROCEDURE InsertProduct
    @PartNbr VARCHAR(30) = NULL,
    @Name VARCHAR(30) = null,
    @Unit VARCHAR(30) = null,
    @VendorName VARCHAR(50) = NULL
as 
BEGIN

    IF @PartNbr is NULL
        or @Name is NULL
        or @unit is NULL
        or @VendorName is NULL
        RETURN -1

    -- check if new PartNbr already exists

    DECLARE @VendorId int; 

    SELECT @VendorId = Id
        FROM Vendors
        WHERE Name LIKE @VendorName + '_%'

            
    INSERT Products (PartNbr, Name, Unit, VendorId)
        VALUES (@PartNbr, @Name, @Unit, @VendorId)

    RETURN 0
END
GO
DECLARE @rc int;
EXEC @rc = InsertProduct 'Watch', 'White Watch', 'each', 'Targ';
IF @rc != 0
    PRINT 'Error'



