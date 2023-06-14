create table person(
	no int primary key auto_increment
    , name varchar(15) not null
    , age int not null
);

select * from person;
insert into person (no, name, age) values (10, '둘리', 33);
insert into person (name, age) values ('길동', 55), ('가시고시', 100), ('마이콜', 45); 

create table hobby(
	id int primary key auto_increment
	, name varchar(10) unique not null
    , timeOfWeek int
);

insert into hobby (name, timeofweek) values ('바둑', 8);
-- duplicate reject - name이 unique 이기 때문에
-- 중복에러 뜨는 만큼 auto_increment 는 증가하고있음 ㅋㅋㅋ

insert into hobby (name, timeofweek) values ('낚시', 10), ('음향', 4), ('독서', 3);

select * from hobby;
select count(*) from hobby where name ='바둑';
select exists (select * from hobby where name= '바둑');

select * 
from person;

select * 
from hobby;

select * 
from personhobby;

-- 둘리의 취미생활은 몇개?
select * from personhobby
where personid = (select no 
				  from person 
                  where name ='둘리');
-- where personid = 10 이 형태로 만든거임