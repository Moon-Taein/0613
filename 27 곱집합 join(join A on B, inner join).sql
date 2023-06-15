select * from books;
select * from authors;

-- inner join
select * 
from books A
inner join authors B on A.author = b.id;
-- join ~ on ~ 결합 할때 특정조건을 만족할때만 결합을 한다
-- inner join 에서 inner 생략 가능


