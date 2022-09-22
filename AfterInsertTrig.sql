use oldhr

sp_help emp


create table emp_audit
(empid int,
empname varchar(20),
sal numeric(7,2),
auditAction varchar(100),
auditTime datetime)
--for--after

create trigger trigAfterInsert 
on emp for insert as
declare
@v_empno int,
@v_ename varchar(20),
@v_sal numeric(7,2),
@v_audit_Action varchar(100)
begin
set @v_audit_Action='Inserted record- after trigger fired'
--inserted is a magic table it gets created automatically whenever insert is performed on
--any table
select empno,ename,sal from inserted
select @v_empno=empno,@v_ename=ename,@v_sal=sal from inserted
insert into emp_audit values(@v_empno,@v_ename,@v_sal,@v_audit_Action,getdate())
print 'trigger fired successfully....'
end

select * from emp
insert into emp(empno,ename,sal) values(14,'Jack',40000)
insert into emp(empno,ename,sal) values(303,'Sravani',40000)

select * from emp_audit