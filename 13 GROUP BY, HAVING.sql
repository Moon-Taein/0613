SELECT * FROM employees;

SELECT department_id, AVG(salary) FROM employees WHERE department_id = 90;
SELECT department_id, AVG(salary) FROM employees WHERE department_id = 60;
SELECT department_id, AVG(salary) FROM employees WHERE department_id = 100;

SELECT department_id, AVG(salary) FROM employees GROUP BY department_id;

-- Job_id 그룹별 salary 합, 평균, 최대, 최소 조회
SELECT Job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary)
 FROM employees GROUP BY Job_id;
 
-- Job_id 가 AD로 시작하는 
SELECT Job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employees
WHERE Job_id LIKE 'AD%'
GROUP BY Job_id;

select job_id, sum(salary), avg(salary), max(SALARY), min(SALARY) 
from employees 
where job_id like 'ad%' 
group by job_id;

-- 집계 결과에 따라 정렬
select job_id, sum(salary) as 'sum_salary'
from employees 
group by job_id -- 중복되는 부분을 기준으로 레코드를 하나로 뭉침;
order by `sum_salary`; -- 1옆에 ` 으로 감싸기 

-- 집계 결과에 대해서 조건 걸기
-- 합이라는 숫자가 10000 이상일때만 조회
select job_id, sum(salary) as 'sum_salary'
from employees 
-- where `sum_salary` >= 10000 컬럼이 존재하기 전 
group by job_id -- 중복되는 부분을 기준으로 레코드를 하나로 뭉침;
having `sum_salary` >= 10000 -- 만들어진 열을 사용하기 위한 having 절
order by `sum_salary`; -- 1옆에 ` 으로 감싸기 

-- 부서별 최고 salary 조회 (단, 부서 인원이 10명 이상인 부서만 조회)
select department_id, max(SALARY)
from employees
group by DEPARTMENT_ID
having count(*) >= 10; -- 이거는 여기서 함수를 만든건가?
