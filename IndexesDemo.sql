use oldhr
go

create table stud
(
rollno int,
sname varchar(10)
)

create clustered index pk_stud
on stud(rollno)


create nonclustered index pk_stud1
on stud(sname)



drop  index pk_stud1 on stud

insert into stud values(1,'Anita')
insert into stud values(2,'Sunita')
insert into stud values(3,'Farida')
insert into stud values(4,'Amit')
insert into stud values(5'Ankit')
insert into stud (rollno,sname)values(6,'Jack')


---clustered index seek
select * from stud
where rollno=5


---Index Seek Non clustered
select * from stud
where sname='Anita'

delete from stud 
where rollno=6

 create unique index u_studname
on stud(sname);

select * from stud

drop table stud

alter table stud
add city varchar(20) default 'Mumbai'

create index c_nameAndcityIndex
on stud(sname,city)




