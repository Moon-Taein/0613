-- asc 오름차순 desc 내림차순
select * from country order by Population asc; -- 오름
select * from country order by Population desc; -- 내림

-- 면적 순 ( 오름차순 )
select * from country order by SurfaceArea asc;
-- 면적 순 ( 내림차순 )
select * from country order by SurfaceArea desc;

-- 조건절을 포함한 정렬
select * from country where continent = 'asia' order by Population asc;

-- region이 ~asia 로 끝나는 국가를
-- 면적의 내림차순으로 정렬하여 조회
select * from country where region like '%asia' order by surfacearea desc;
