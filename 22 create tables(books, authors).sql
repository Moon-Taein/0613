-- 도서
-- 제목 가격 할인율 -- 하나의 칼럼에는 하나의 값 
-- 파워자바, 30000, 5 (계산 되는 필드 넣지 않는다 - 수정에 불리 -할인가격 등-)

create table books (
	id int primary key auto_increment
	, title varchar(50) not null
    , price int not null
    , discountRate int not null default 0 -- default '기본값'
);

desc books;

insert into books (title, price) values ('소설1', 15000);
insert into books (title, price, discountRate) values ('파워자바', 30000, 5);
insert into books (title, price) values ('시집1', 10000), ('SF1', 20000), ('수필1', 9000);



-- 작가
-- 작가의 이름 작가의 성 작가의 풀네임
create table authors(
	id int primary key auto_increment
	, firstname varchar(15) not null
    , lastname varchar(15) not null
);
desc authors;

insert into authors (firstname, lastname) values ('길동','고'), ('작가','김');
select * from authors;

-- 칼럼 추가
alter table books ADD column author int;

select * from authors;
select * from books;
desc books;
