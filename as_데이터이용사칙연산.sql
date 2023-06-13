-- 칼럼의 타이틀을 as로 바꿔서 조회할수있다.
-- as는 생략 가능
select name '이름' , surfacearea as '면적', population as '인구' from country;
select 1+1 as '합';

select name, 1 + 1 from country;
select name, population, population + 1 '인구+1' from country;

-- 인구밀도( population / surfacearea )
select name, population, SurfaceArea, population/surfacearea as '인구밀도' from country;
