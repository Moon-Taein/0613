-- sql 문자열 데이터 탕비
-- 고정 길이(5), 가변 길이(5)
-- 길이값에 대한 제한이 필요함
-- A _ _ _ _ 나머지 4칸을 빈칸으로 가짐 (고정길이)
-- A (가변길이)
-- 고정길이 char
-- 가변길이 varchar

create table person(
	name varchar(15)
    , age int	
);

desc person;
select * from person;

insert into person (name, age) values ('스티븐 킹', 44);
-- insert into person (name, age) values ('브루스 리', 33);
insert into person (name, age) values ('브루스 웨인', 22),('클락 켄트', 23),('피터 파커', 24);

