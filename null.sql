-- is null, is not null;
select name, indepyear from country 
 where indepyear is not null;

-- 기대수명 lifeexpectancy
-- null 값 제외한 국가명, 기대수명 조회
select name, lifeexpectancy from country
 where LifeExpectancy is not null;

--  
