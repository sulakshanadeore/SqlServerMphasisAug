use pubs
go
select * from publishers
select * from jobs
select * from titles
1 publisher----> M titles(books)
                               (Pub_id)----FK 
---count books publihserwise
select pub_id,count(title_id) as booksPublished from titles
group by pub_id

1 job--- M emp
----count(emp) job wise
select job_id, count(emp_id) empcount from employee
group by job_id
order by empcount


----show the empcount jobwise where empcount >=4
select job_id JobIdentity, count(emp_id) "empcount" from employee
group by job_id
having count(emp_id)>=4 
order by empcount

---Show the number of Books Published by each  publisher datewise
select pubdate,pub_id as ByPublisher,count(title_id) NumberOfBooksPublihsed from  titles
group by pubdate,pub_id


select pubdate,sum(title_id) NumberOfBooksPublihsed from  titles
group by pubdate,pub_id

select sum(price) from titles
where pub_id=1389--- >94.88


--where pub_id =0877 or pub_id=1389
select pub_id,sum(price) from titles
where pub_id in(0877,1389)          
group by pub_id 
order by pub_id


select pub_id,title_id,sum(price) from titles
group by rollup(pub_id,title_id)
order by pub_id

select pub_id,price from titles
order by pub_id

0736	2.99
0736	10.95
0736	7.00
0736	19.99
0736	7.99

select sum(price) from titles
where pub_id=0736

select * from titles
where price is null

select * from titles
where price is not null



















