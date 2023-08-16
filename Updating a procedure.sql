CREATE or ALTER PROCEDURE UpdateProduct
    @PartNbr VARCHAR(30) = NULL,
    @Name VARCHAR(30) = null,
    @Price DECIMAL(9,2) = null,
    @Unit VARCHAR(30) = null,
    @VendorId VARCHAR(50) = NULL
    @Id int = NULL
AS
BEGIN
    if @Id is NULL
        RETURN -1; --must provide the ID to be updated

    DECLARE @OrigId int,
            @OrigPartNbr VARCHAR(30),
            @OrigName VARCHAR(30),
            @OrigPrice DECIMAL(9,2),
            @OrigUnit VARCHAR (30),
            @OrigVendorId int;

    SELECT @OrigId = Id,
            @OrigPartNbr = PartNbr,
            @OrigName = Name,
            @OrigPrice = Price,
            @OrigUnit = Unit,
            @OrigVendorId = @OrigVendorId

    IF @PartNbr in NULL
        SET @PartNbr = @OrigPartNbr
        --Do this for all

    IF @Name in NULL
        SET @Name = @OrigName

    IF @Price in NULL
        SET @Price = @OrigPrice

    IF @Unit in NULL
        SET @Unit = @OrigUnit

    IF @VendorId in NULL
        SET @VendorId = @OrigVendorId
        
            
    update Products SET
       PartNbr = @PartNbr,
       Name = @Name,
       Price = @Price,
       Unit = @Unit,
       VendorId = @VendorId
       WHERE Id = @Id

    RETURN 0

END
GO

DECLARE @rc int;
EXEC @rc = UpdateProduct @Id = 11,
    @Name = 'Timex Platinum Watch',
    @Price = 350
if @rc != 0
    PRINT 'Error'