-- 상위 열명을 오름차순으로 보기
select first_name, last_name, salary
	from employees
	order by salary desc -- asc로 바꾸면 하위 10명이 나옴
	limit 10;
    
-- 테이블도 서브쿼리의 형태로 가능 ( from 절에서 사용 )
select * 
from (select first_name, last_name, salary
	from employees
    order by salary desc 
    limit 10) as A
order by salary asc;

-- 내가 보고싶은 칼럼 - 테이블 선택 - 조건 - 그룹 - 정렬

-- 부서 테이블(department) IT명으로 시작하는 부서 번호 조회
select DEPARTMENT_ID
from departments
where DEPARTMENT_NAME like 'it%';

-- 특정 값, 특정 값을 가지는 테이블 등등을 만들어서 이용하는게 서브쿼리

-- it 부서에서 일하는 직원 조회
select first_name, last_name, salary
from employees
where DEPARTMENT_ID in (select DEPARTMENT_ID
						from departments
						where DEPARTMENT_NAME like 'it%');

