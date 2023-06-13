-- 한, 중, 일 3행을 조회

select * from country 
where name = 'south korea' or name = 'japan' or name = 'china';

select * from country
 where name in ('south korea', 'japan', 'china');
 
-- 인구 ( population) 가 40000000 이상의 국가들 조회
select * from country
 where Population >= 40000000;
-- 인구(population)가 50000000 이하의 국가들 조회; 
select * from country
 where population <= 50000000;
-- 인구가 40000000 ~ 50000000 국가 조회
select * from country
 where 40000000 <= population and population <= 50000000; 
select * from country
 where Population between 40000000 and 50000000; 

-- 인구가 4천만 이상 국가 조회 ( 단, asia 대륙의 국가는 제외한다 )
select * from country
 where Population >= 40000000 and continent <> 'asia';



 
 