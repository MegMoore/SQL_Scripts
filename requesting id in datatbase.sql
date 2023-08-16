--making a procedure/parametor
CREATE or ALTER PROCEDURE DisplayRequestAndLinesForTotal
    @RequestId INT = NULL
AS
BEGIN

    if @RequestId is NULL or @RequestId <= 0
    BEGIN
        PRINT '@requestId must be an integer'
        RETURN
    END


    select r.id, r.DESCRIPTION, r.Total, rl.Quantity, p.price, (rl.Quantity * p.Price) LineTotal
        from Requests r 
    JOIN RequestLines rl 
        ON r.Id = rl.RequestedId
    JOIN Products p 
    ON p.Id = rl.ProductId
    WHERE r.Id = @RequestId

END
GO
EXEC DisplayRequestAndLinesForTotal @RequestId = 10
go
