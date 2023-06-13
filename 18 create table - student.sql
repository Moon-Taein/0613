-- 학생 테이블
-- 이름 가변길이 문자열(10)
-- 성 가변길이 문자열(10)
-- 국어 점수 정수
-- 영어 점수 정수
-- 수학 점수 정수

create table if not exists student (
	first_name varchar(10)
	, last_name varchar(10)
    , kor int
    , eng int
    , math int
);

insert into student (first_name, last_name, kor, eng, math)
values ('카츄' , '피', 40, 50 ,60), ('게피' , '토', 45, 30 ,90),
('나뇽' , '망', 90, 70 ,20), ('죤투' , '피', 80, 60 ,70);

insert into student (first_name, last_name, kor, eng, math)
values (null, null, null, null, null);

select * from student;
select distinct first_name from student;
