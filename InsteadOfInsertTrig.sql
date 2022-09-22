select * from locations

create table ApprovalStatus
(locid int,
appstatus varchar(20) default 'pending')
select * from  ApprovalStatus

create trigger updateApprovalStatus
on locations
instead of insert
as
begin
declare 
@id int
select @id=locationid from inserted
insert into ApprovalStatus(locid) values (@id) 
print 'cannot directly insert into locations table'
end

insert into locations values(102,'EON IT PARK','Pune')