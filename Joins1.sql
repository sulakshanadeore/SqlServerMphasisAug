select * from titles

select * from publishers

select title_id, title ,type, t.pub_id "titles.pubid", pub.pub_id, pub_name,city,state,country,price,advance
 from titles as  t inner join  publishers as pub on t.pub_id=pub.pub_id

 Title--id,name,price
 titleAuthor---auid,title_id
 Authors-auid,auname
 
 select t.title_id, t.title, t.price, ta.au_id, ta.title_id,au_ord,ta.au_id "titleauthors",a.au_id "from authors"
  from titles t inner join  titleauthor ta
  on  t.title_id= ta.title_id
  inner join authors a
  on a.au_id=ta.au_id


  sp_help publishers
  sp_help pub_info
  sp_help titles
  --------------------------------------------------------------------------------------

  select t.title_id, t.pub_id, t.title, t.price, p.pub_id, p.pub_name, 
  pr.pr_info,
    pr.pub_id
  from titles t inner join publishers p 
  on t.title_id=p.pub_id
  inner join pub_info pr
  ON pr.pub_id=p.pub_id
  ------------------------------------------------------------------------------------------
  select * from authors

  select au_id,au_fname,city from authors
  order by city
  select a.au_id,a.au_fname, a.city from authors a ,authors b
  where a.city=b.city
  order by city



  