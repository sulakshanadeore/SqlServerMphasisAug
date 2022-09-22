ALTER FUNCTION fn_ShowCity
(
	@p_customerid nchar(5)
)
RETURNS nvarchar(15)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @v_city nvarchar(15)

	-- Add the T-SQL statements to compute the return value here
	SELECT @v_city=city from customers
	where customerid=@p_customerid
	-- Return the result of the function
	RETURN @v_city

END
GO

select [dbo].[fn_ShowCity]('ALFKI')