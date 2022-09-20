use pubs
go

select * from authors

select * from titles

select * from publishers

select * from employee

select * from jobs

select * from stores

select * from titles
where type = 'business'

select * from titles
where type = 'BUSINESS'

select * from titles
where type  like 'BUSINESS'

select * from titles
where title_id='BU1032'


select * from titles
where pub_id=1389

select * from titles
where pubdate ='1991-06-12 00:00:00.000'

select title_id,title from titles
where pubdate ='1991-06-12 00:00:00.000'

select title,title_id from titles
where pubdate ='1991-06-12 00:00:00.000'

select * from titles
select title_id,title from titles
where pubdate ='1991-06-12 00:00:00.000' and pub_id=1389


select title_id,title from titles
where pubdate ='1991-06-12 00:00:00.000' or pub_id=1389







select title_id,title ,pub_id from titles
where pubdate ='1991-06-12 00:00:00.000' and pub_id!=1389


select title_id,title ,pub_id from titles
where pub_id!=1389
order by pub_id

orderby--Asc  by default

select title_id,title ,pub_id from titles
where pub_id!=1389
order by pub_id desc


select title_id,title ,pub_id from titles
where pub_id!=1389
order by pub_id desc, title_id 

select title_id,title ,pub_id,advance from titles
where pub_id!=1389
order by pub_id desc, advance 


select title_id,title ,pub_id,advance from titles
where pub_id!=1389
order by pub_id desc, advance desc


select title_id,title ,pub_id,advance from titles
where pub_id!=1389
order by 3 desc, 4 desc

select title_id,title ,pub_id,royalty,advance from titles
where pub_id!=1389
order by 3 desc, 4 desc


select title_id,title ,pub_id,royalty,advance from titles
where pub_id!=1389
order by 3 desc, 4 desc

clauses
-------
select-1
where-2
groupby -3
having-4
orderby-5

select * from employee
select count(emp_id) from employee

select count(minit) from employee


select count(pub_id) from publishers
select count(state) from publishers

select sum(1+2+2)


select * from publishers

select count(pub_id) from publishers
where country='USA'

select * from titles
---count  the books in business type

select count(title_id)  as BookCount from titles
where type='business'

select count(title_id) from titles
where advance=5000

select sum(advance) from titles
where advance=5000

select min(advance) from titles
select max(advance) from titles

select min(advance) from titles
where type='business'

--minimum advance per type
select type,min(advance) as minimumAdvance from titles
group by type


select type,max(advance) as minimumAdvance from titles
group by type


select type,sum(advance) as minimumAdvance from titles
group by type






select max(advance) from titles
where type='business'
select avg(advance) from titles
where type='business'





















































