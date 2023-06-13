select * from country 
 where name = 'south korea' or name = 'north korea';

-- pattern search
-- korea로 끝나는 나라 조회 like %
select * from country
 where name like '%korea';
 
-- ~ria로 끄타는 국가 조회
select * from country
 where name like '%ria';
 
-- region이 north 로 시작하는 국가들
select * from country
 where region like 'north%';

-- A를 포함하는 국가명 조회
select * from country
 where name like '%a%';

select * from country where name like 'a______a'; -- 귀여움

-- region이 ~africa로 끝나고, 국가명이 a로 시작하는 국가조회
select * from country where region like '%africa' and name like'a%';

