CREATE FUNCTION fn_AllCustomersByCity 
(	
	-- Add the parameters for the function here
	@p_city nvarchar(15)
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT  * from customers 
	where city=@p_city
)
GO



select  * from [dbo].[fn_AllCustomersByCity]('London')