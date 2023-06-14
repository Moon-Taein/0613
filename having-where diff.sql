use world;

select avg(population) from country where population > 1000000;

-- where / having 차이
select * from country;

-- where 그룹을 만들때 행을 걸러낼때 사용 ( where 절 만족하는 애들만 보여줘 )
-- having 그룹이 만들어진 후에 걸러낼때 사용

select continent, avg(population)
from country
where population > 0
group by continent;
-- having avg(population) > 10000000;

select * 
from country 
group by continent;