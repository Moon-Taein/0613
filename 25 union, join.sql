-- 테이블의 결합
-- union, join 

-- 연봉 1 ~ 10 등, 연봉 31 ~ 40등 조회
-- union column 구성이 같아야한다.
(select first_name, last_name salary from employees limit 10)
union
(select first_name, last_name salary from employees limit 10 offset 30);

-- union 완전 똑같은 행이 있으면 중복을 제거함 
-- union all 중복을 무시하고 행을 합침
select 1, 2, 3, 4
union all
select 5, 6, 7, 8
union all
select 1, 2, 3, 4
union all
select 1, 2, 3, 4;

