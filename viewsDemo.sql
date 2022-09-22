create view v_prodviews
as
select *  from products
---------------------------------------------
select * from v_prodviews
---------------------------------------------
insert into v_prodviews
values (3,'Bread')
update v_prodviews
set prodname='WheatBread'
where prodid=3
---------------------------------------------
select * from products
------------------------------------------

select deptno,count(empno) from emp
group by deptno

select * from emp


create view v_empdata
as 
select deptno,count(empno) empcount from emp
group by deptno


select * from v_empdata
------------------------------------------------------
create   view v_newprodview
as
select *  from products

----------------------------------------
drop view v_newprodview
---------------------------------------------


create view v_empsortedData
(empno,employeename)
as 
select empno,ename from emp


drop view v_empsortedData

select * from v_empsortedData