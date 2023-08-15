

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