-- left outer join / right outer join
-- outer 생략가능
select * 
from books A
left join authors B on A.author = b.id;

select * 
from books A
right outer join authors B on A.author = b.id;

select *
from authors A
left join books b on a.id = b.author;

select *
from authors A
right join books b on a.id = b.author;

select *
from authors A
inner join books b on a.id = b.author;