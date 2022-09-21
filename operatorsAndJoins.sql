select * from dept

select * from emp
insert into emp values(13,'Ganesh','CLERK',2,'1980-09-09',1000,null,null)

select empno,e.deptno,ename,d.deptno "DEPT"
from emp e left outer join dept d
on e.deptno=d.deptno


select empno,e.deptno,ename,d.deptno "DEPT"
from emp e right outer join dept d
on e.deptno=d.deptno

select empno,e.deptno,ename,d.deptno "DEPT"
from emp e right outer join dept d
on e.deptno=d.deptno

select empno,e.deptno,ename,d.deptno "DEPT"
from emp e full outer join dept d
on e.deptno=d.deptno


select * from emp


select e.empno,e.ename,e.mgr,m.ename,m.empno
 from emp e,emp m
 where e.mgr=m.empno

 update emp
 set job='Manager'
 where job =' MANAGER'

 select distinct (job) ,deptno from emp
 where deptno=10


 select job ,deptno from emp
 where deptno=10
 union
 select job,deptno from emp
 where deptno=20
 ----------------------------------------------

 select job ,deptno from emp
 where deptno=10
 union all
 select job,deptno from emp
 where deptno=20
 ----------------------------------
 select job from emp
 where deptno=10
 intersect
 select job from emp
 where deptno=20
 ---------------------------
 select job from emp
 where deptno=20
 except
 select job from emp
 where deptno=10


 







