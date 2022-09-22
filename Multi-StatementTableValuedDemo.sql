
CREATE FUNCTION fn_ShowCustomersByTheirCity
(
	@p_city nvarchar(15)
)
RETURNS @CustCity TABLE 
(
	-- Add the column definitions for the TABLE variable here
	custid nvarchar(5),
	custname nvarchar(40)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	insert into @custcity
	select customerid,companyname from customers
	RETURN 
END
GO


select * from [dbo].[fn_ShowCustomersByTheirCity]('London')