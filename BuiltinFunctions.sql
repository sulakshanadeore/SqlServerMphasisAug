Aggregate--sum,min,max,avg,count---single values
-------------------------------------------------------------------
use Northwind
go
-------------------------------------------------------------------
String Functions
select firstname, len(firstname) from Employees

select firstname, upper(firstname),lower(firstname) from Employees

select concat(firstname,'--',lastname) from Employees

select firstname + '--' + lastname from Employees

select firstname, datalength(firstname) from Employees

select firstname, CHARINDEX('a',firstname) from employees
select ASCII('A')

select firstname,left(firstname,3) from employees

select firstname,REPLACE(firstname,'a','EA') from employees

select firstname,REverse(firstname) from employees

select str(10) 
select firstname, SUBSTRING(firstname,1,3) from Employees



 Date Functions

 select getdate()
 select DATEADD(YEAR,3,getdate())
 select DATEADD(MONTH,3,getdate())
 select DATEADD(DAY,3,getdate())
 select DATEADD(HOUR,3,getdate())

 select birthdate, DATEADD(MONTH,3,birthdate) from employees
select birthdate, DATEDIFF(YEAR,birthdate,getdate()) from Employees

select birthdate, year(birthdate),month(birthdate),day(birthdate) from employees

select DATEFROMPARTS(2022,03,11)
select datename(year,birthdate) from employees

select datename(month,birthdate) from employees
select datename(day,birthdate) from employees

select datepart(year,birthdate) from employees

select isdate(firstname) from Employees
select isdate(birthdate) from Employees

select sysdatetime()
select getdate()
select GETUTCDATE()

number functions
abs,sqrt,square,power,round

select sqrt(100)
select square(10)
select power(2,3)
select round(2342.334,0)
select abs(-333.5)
select CEILING(25.74)
select floor(25.74)










