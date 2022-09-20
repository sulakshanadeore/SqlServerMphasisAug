use mphasisAugustBatch

create table products
(
prodid int constraint pk_prodPK primary key,
prodname varchar(20) constraint c_prname not null,
unitprice int 
)

sp_help products

create table categories
(catid int constraint pk_catPK primary key,
catname varchar(20),
description varchar(40))

alter table products
add categoryno int constraint fk_prodfk foreign key references categories(catid)

drop table products

composite pk--- composed of more than one column
create table suppliers
(suppid int,
suppname varchar(20),
city varchar(20),
contactperson varchar(20),
constraint cpk_pk primary key(suppid,contactperson)
)

sp_help suppliers

alter table suppliers
drop constraint cpk_pk

alter table suppliers
add constraint cpk_pk primary key(suppid,contactperson)

alter table products
add constraint chk_price check (unitprice>0)	

sp_help products

alter table products
add mfgdate date 


alter table products
add saledate date 

alter table products
add constraint ch_datecheck check(saledate>mfgdate)

sp_help emp
sp_help dependents

create table dependents
(depid int,
dep_name varchar(20),
dep_relation varchar(20),
empno int foreign key references emp(empno)
)

sp_help categories ---metadata about the categories table
sp_help products

DML--- Manipulating our tables/ Data Manipulation Language
--Insert/Update/Delete


insert into categories values (1,'Beverages','All beverages')
insert into categories values (2,'Snacks','All snacks')
insert into categories values(3,'Dinner',null)
insert into categories(catid,catname) values(4,'Desserts')

insert into products values(1,'tea',10,1,'2022-09-20','2022-09-21')
insert into products values(2,'coffee',20,1,'2022-09-20','2022-09-21')
insert into products values(3,'milkshake',50,1,'2022-09-20','2022-09-22')

drop table products

create table products
(prodid int identity(1,1) constraint pk_key  primary key,
prodname varchar(20),
unitprice int  constraint price_check check (unitprice>0),
mfgdate date default getdate(),
saledate date ,
constraint date_check check (saledate>=mfgdate))

insert into products(prodname,unitprice,mfgdate,saledate) values('tea',10,'2022-09-20','2022-09-21')
insert into products values('coffee',20,'2022-09-20','2022-09-21')

select SYSDATETIME()

sp_help products

create table ProductSales
(invno int primary key identity(101,1),
invdate date default getdate(),
amt numeric(10,2) )


insert into productsales(amt) values(80000.00)
insert into productsales values('2022-09-21',80000.00)

select * from productsales

update productsales
set amt=100000
where invno=101


update productsales
set amt=40000 , invdate='2022-09-24'
where invno=102

delete from ProductSales
where invno=103

DQL----Data Query Language---
select * from categories
select * from products

sp_help teachers

drop table Teachers
drop table subjects

--1 teacher-- m subject
--1 subject--M teacher
--M-N
create table teacher
(teacherid int primary key,
teachername varchar(20))

create table subject
(subjectid int primary key,
subjectname varchar(20))

create table teacherSubjects
(
teacherid int foreign key references teacher(teacherid), 
subjectid int foreign key references subject(subjectid)
)

sp_help teacher
sp_help subject
sp_help teachersubjects

insert into teacher values (1,'Jack')
insert into teacher values (2,'Jim')

select * from teacher

insert into subject values (101,'Maths')
insert into subject values (102,'Science')
insert into subject values (103,'English')
insert into subject values (104,'French')

select * from teacher
select * from subject
select * from teachersubjects

insert into teachersubjects values(1,101)
insert into teachersubjects values(1,102)










































