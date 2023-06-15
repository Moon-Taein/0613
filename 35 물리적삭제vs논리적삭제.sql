select * from authors;

-- data 당장 필요하지 않아도 실제 삭제를 잘 하지않는다.
-- 논리적인 삭제

insert into authors (firstname, lastname) values ('논리삭제' , '김');

-- delete from authors where id = 4; -- 물리적삭제
-- 논리적 삭제
update authors
set active = 0
where id = 4;
-- active 1인 애들만 조회
select * from authors where active = 1;
-- 매번 where 절 적어야함
-- view로 만들기 
-- view, stored procedure, functions, join, union

create table authors_deleted like authors;

-- 행 추가
insert into authors_deleted (id, firstname, lastname)
select id, firstname, lastname from authors where id = 4;

select * from authors_deleted;

-- 행 삭제
delete from authors where id = 4;
 
