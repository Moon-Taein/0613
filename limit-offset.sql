-- 결과행에 갯수를 제한하는 limit 
-- 행을 건너 뛸 수 있는 offset
select * from country order by Population desc limit 20;
select * from country order by Population desc limit 1 offset 1;

-- 인구 많은 11위~20위 국가
select * from country order by population desc limit 10 offset 10;
-- offset 생략 가능
select * from country order by population desc limit 20, 10;

-- gnp 하위 국가 20개 조회( 단, 0인 국가는 제외한다 )
select * from country where gnp > 0 order by gnp asc limit 20;




