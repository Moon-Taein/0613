select * from country order by continent, population;

-- 1. 대륙의 오름차순 2. 인구의 내림차순
select * from country order by continent asc, population desc;

-- 인구밀도 조회하기 
select name, population, surfacearea, population/surfacearea as '인구밀도' 
from country
order by population/surfacearea;



