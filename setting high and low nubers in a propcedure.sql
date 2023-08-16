CREATE or ALTER PROCEDURE ListCustomerBySales
    @LowSales DECIMAL(7,2) = 0,
    @HighSales decimal(9,2) = 1000000
    as
    BEGIN
        IF @LowSales is NULL or @HighSales is NULL
            RETURN -1
        if @lowSales > @HighSales
        BEGIN
            DECLARE @sales DECIMAL(9,2) = @LowSales;
            SET @lowSales = @HighSales
            SET @HighSales = @sales
        END

        SELECT *
            FROM Customers
            WHERE Sales BETWEEN @LowSales and @HighSales
            ORDER BY Sales DESC;

        RETURN 0
    END
    GO
    DECLARE @rc int;
    EXEC @rc = ListCustomerBySales @LowSales = 30000;
    if @rc = -1
        PRINT 'ok'
    if @rc = -1
        PRINT 'wrong'