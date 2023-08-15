DECLARE cur CURSOR FOR
    SELECT id, [DESCRIPTION] FROM Requests;

DECLARE @id int, @description varchar(80), @Total decimal(9,2);

OPEN cur;
FETCH NEXT FROM cur INTO @id, @description;
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Request Id is ' + STR(@id);
    SELECT @Total = SUM(rl.Quantity * p.Price)
        FROM RequestLines rl 
        JOIN Products p ON p.Id = rl.ProductId
        WHERE rl.RequestedId = @id
        GROUP BY rl.RequestedId;
    UPDATE Requests SET
        Total = @Total
        WHERE Id = @id;
    PRINT 'Total Id is ' + STR(@Total)
    
    FETCH NEXT FROM cur INTO @id, @description;
END

CLOSE cur;

DEALLOCATE cur;

/*
DECLARE @counter int = 1;
DECLARE @Sum int = 0;

WHILE @counter <= 20
BEGIN
    IF @counter % 2 != 0
    BEGIN
        set @counter = @counter + 1;
            CONTINUE;
    END
    
    SET @Sum = @Sum + @counter;
    set @counter = @counter + 1;
END

PRINT 'The sum is ' + STR(@Sum);

DECLARE @name VARCHAR(30) = 'Megan' + ' ' + 'Moore';

SELECT @name;

DECLARE @color VARCHAR(10) = 'red';

if @color = 'red'
   BEGIN
   PRINT 'The color is red!';
   PRINT 'this is a deep red';
   print 'this is a very deep red';
   end
PRINT 'The color is not red!';

DECLARE @counter int = 0;
WHILE @counter < 10
BEGIN
    IF @counter = 7
        BREAK;
    PRINT 'The value of the counter is ' + str(@counter)
    set @counter = @counter + 1;
END
*/