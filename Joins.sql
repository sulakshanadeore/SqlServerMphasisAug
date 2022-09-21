use northwind
select * from customers -----91---2 customers didnt place orders even once
select * from Orders  ------830


--there are customer who didnt place any orders,
--some others who placed orders multiple times


sp_help customers  
sp_help orders

customer	s										orders
(LHS)Left											RHS(right)
select c.companyname,c.customerid, o.orderid
 from customers c  left outer join orders o
on c.customerid=o.customerid
order by o.orderid

select distinct customerid from orders
LHS										RHS
select c.companyname, o.orderid
 from orders  o left outer join customers c
on c.customerid=o.customerid


select c.companyname, o.orderid
 from orders  o full outer join customers c
on c.customerid=o.customerid





