-- david lee 보다 높은 연봉을 받는 직원들을 조회
select salary 
from employees 
where first_name = 'david' and last_name = 'lee';

select * from employees where salary > 6800;

-- 서브쿼리
select * from employees 
	where salary > ( select salary 
					 from employees 
					 where first_name = 'david' and last_name = 'lee');

-- 직원 전체 평균 salary 보다 높은 직원들 조회
select * 
from employees
where salary > (select avg(SALARY)
				from employees)
order by salary;

-- 각 직원의 연봉 - 평균연봉 조회
SELECT 
    first_name,
    last_name,
    salary,
    ROUND(salary - (SELECT AVG(salary) FROM employees), 1) AS gap
FROM
    employees
ORDER BY `gap`;

select max(SALARY) from employees;
select min(SALARY) from employees;

-- 서브쿼리를 where 절이나 select 절 등의 조건으로 사용
-- 최고 연봉자, 최저 연봉자 직원 조회
select first_name, LAST_NAME, salary
from employees
where salary = (select max(SALARY) from employees) or salary = (select min(SALARY) from employees);


                
