-- employees
select * from employees;
-- departments
select * from departments;

-- 직원의 이름과 근무하는 부서의 이름
-- 1번 방법
select a.FIRST_NAME, a.LAST_NAME, b.DEPARTMENT_NAME
from employees a
inner join departments b on a.department_id = b.department_id and b.DEPARTMENT_NAME = 'it';
-- where b.DEPARTMENT_NAME like 'IT%' where절 사용할수도있고 on 에다가 and로 조건을 더 추가해줄수도있다.
-- 별칭을 사용하면 조회할 칼럼의 이름과, on 다음에 오는 조건을 쉽게 사용할 수 있다.

-- 2번 방법 it 부서하나만을 가지는 서브쿼리를 이용해서 inner join;
select a.first_name, a.last_name, b.department_name
from employees a
inner join (select * 
			from departments
			where DEPARTMENT_NAME = 'it') b on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select * from departments;
select * from locations;

-- departments, locations 결합 departments의 모든 행이 조회
select * 
from departments a
left join locations b on a.LOCATION_ID = b.LOCATION_ID;

-- departments, locations 결합 departments의 모든 행이 조회, 부서 중 seattle 만 조회
select * 
from departments a
left join locations b on a.LOCATION_ID = b.LOCATION_ID and b.CITY = 'seattle';
-- where b.city = 'seattle';

-- seattle 에 위치한 부서에서 근무하는 직원 목록
select a.FIRST_NAME, a.LAST_NAME, b.DEPARTMENT_NAME, c.CITY
from employees a
left join departments b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
left join locations c on b.LOCATION_ID = c.LOCATION_ID
-- and c.CITY = 'seattle'; -- 얘는 결합만 안하고 행을 날리진않음
where c.city = 'seattle'; -- where 절은 left join으로 인한 필요없는 정보들 날릴 수 있음
-- 조건을 걸면서 여러개의 조인을 한다.

select * from `my_db`.`student`;

-- 자기가 속한 부서의 평균 연봉보다 높이 받는 직원 조회
select *
from employees a
left join (select department_id, avg(salary) as avg
			from employees
			group by department_id) b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where a.salary > b.avg
order by salary desc;

