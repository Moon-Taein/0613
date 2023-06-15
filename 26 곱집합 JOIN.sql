use my_db;
-- 나는 hr에 있는디
use hr;
select * from books;
select * from authors;

-- 곱집합 JOIN (교차결합, Cross Join)
-- sql 에서 대소문자는 어떻게 구별되는지 
select a.title, a.price, a.discountrate, b.firstname, b.lastname
from books as A, authors as B
where a.author = b.id;
