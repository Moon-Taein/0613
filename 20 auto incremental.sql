-- auto incremental 이라서 번호를 따로 지정안해줘도됨
insert into student (first_name, last_name, kor, eng, math)
values ('길동', '홍', 100, 100, 100);

insert into student (first_name, last_name, kor, eng, math)
values ('둘리', '고', 90, 90, 90);

insert into student (first_name, last_name, kor, eng, math)
values ('이콜', '마', 80, 80, 80);

insert into student (no, first_name, last_name, kor, eng, math)
values (10, '클락', '켄트', 80, 80, 80);

insert into student (first_name, last_name, kor, eng, math)
values ('브루스', '웨인', 80, 80, 80);

select * from my_db.student;

desc student;

