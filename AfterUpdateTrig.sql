create trigger trigAfterUpdate
on emp for Update as
declare
@v_empno int,
@v_ename varchar(20),
@v_sal numeric(7,2),
@v_audit_Action varchar(100)
begin
set @v_audit_Action='Updated record- after trigger fired'
--inserted is a magic table it gets created automatically whenever insert is performed on
--any table
select empno,ename,sal from inserted
select @v_empno=empno,@v_ename=ename,@v_sal=sal from inserted
insert into emp_audit values(@v_empno,@v_ename,@v_sal,@v_audit_Action,getdate())
print 'trigger fired successfully....'
end

select * from emp_audit
select * from emp
update emp
set sal=30000,
ename='Sri'
where empno=14
