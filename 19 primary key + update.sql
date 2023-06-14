-- sql, db, html, css ,js

-- sql - count, index, key, view, schema, record
-- db - 프로그램과 연결

-- not null
-- 생략하면 null 허용
create table person(
	no int primary key
	, name varchar(15) not null 
    , age int not null
);

-- primary key - pk 고유키 not null 이고 unique 하다
-- record 마다 고유해야하고 null 있으면 안되고 자주변경이 안되는 값
-- primary key 는 index의 역할을 할 수 있음;

desc person;

insert into person (no, name, age) values (10, '둘리', 33);
insert into person (no, name, age) values (9, '길동', 44);
insert into person (no, name, age) values (11, '마이콜', 55);
insert into person (no, name, age) values (12, '가시고기', 100);

select * from person;

select * from person where name = '마이콜';

-- 레코드의 값 수정 update
update person
-- set + 변경할 칼럼
	set name = '철수';
-- where 레코드로 특정 시키기
-- where name = '마이콜';

update person
	set name = '새이름'
    where name = '새이름' and age = 44;

-- primary key를 이용해서 간단하게 접근
update person
	set name = '길동', age = 10
    where no = 10;