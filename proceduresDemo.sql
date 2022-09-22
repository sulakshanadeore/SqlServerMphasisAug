create procedure stproc_DeleteProduct
@p_prodid int
as
begin
delete from products 
where productid=@p_prodid
end


declare 
@returnval int,
@p_prodid int=78
begin
exec @returnval=[dbo].[stproc_DeleteProduct]
@p_prodid
select @returnval
end

select * from products
