declare
---declaration variables, cursors etc
begin
--logic
end



begin
print 'hello world!!!'
end

declare 
@num1 int=50,
@num2 int=20,
@ans int
begin
--set @num1=20
--set @num2=30
set @ans=@num1+@num2
print @ans
end

select * from employees
--Find the city for employee id =1
declare
@v_city nvarchar(15) ,
@v_empid int=2
begin
select @v_city=city from Employees
where EmployeeID=@v_empid
print @v_city
end


declare 
@v_grossamt numeric(10,2),
@v_dis real,
@v_netamt numeric(10,2),
@v_orderid int=10249,
@v_qty int,
@v_unitprice money
begin
 select @v_grossamt=sum(unitprice*quantity),@v_dis=Discount from [Order Details]
  where orderid=@v_orderid
 group by orderid,Discount
 set @v_netamt=@v_grossamt - ((@v_grossamt*@v_dis)/100);
 print @v_netamt
  end;





