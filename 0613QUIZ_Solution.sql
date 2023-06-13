-- HR 데이터베이스 employees 테이블 연습

--  1. 부서(department_id) 그룹별 평균 연봉 조회하기
SELECT DEPARTMENT_ID as '부서', avg(salary) '연봉 평균' 
FROM employees
group by DEPARTMENT_ID ; 

-- select A.`부서`, A.`연봉 평균`
-- from (	SELECT DEPARTMENT_ID as '부서', avg(salary) '연봉 평균' 
-- 		FROM employees
-- 		group by DEPARTMENT_ID ) as A;
    
--  2. 전체 연봉에 대해, 각 (개인별 연봉 / 전체 연봉) 비율을 계산해 조회하기
SELECT first_name, last_name, salary, round(SALARY / (select sum(salary) from employees) * 100, 3) as '전체연봉에 대한 비율'
from employees;
    
SELECT A.first_name FROM employees AS A;

--  3. 본인이 속한 부서의 평균 연봉보다 높은 연봉을 가진 직원 조회하기
--    -> 별명이 있는 테이블의 특정 칼럼을 표현하는 법 : 테이블별명.컬럼이름
--    -> SELECT A.first_name FROM employees AS A;
SELECT * 
FROM employees as A
WHERE salary > (select B.`연봉평균`
				from (	SELECT DEPARTMENT_ID as '부서', avg(salary) '연봉평균'
						FROM employees
						group by DEPARTMENT_ID ) as B
				where A.DEPARTMENT_ID = B.`부서`)
order by DEPARTMENT_ID, salary;

-- 태경이가 한거 이해하기! having 절을 잘 모르겠음;
-- SELECT first_name, last_name, salary, DEPARTMENT_ID 
-- FROM employees AS FUCKUP
-- WHERE salary > (	SELECT AVG(SALARY) 
-- 					FROM employees 
-- 					GROUP BY department_id 
--             		HAVING department_id = FUCKUP.DEPARTMENT_ID)
-- ORDER BY DEPARTMENT_ID;

-- select * from employees order by DEPARTMENT_ID, salary;

--  4. 고용일(hire_date) 기준으로 1987-06-01 ~ 1987-06-30 범위 안에 고용된 직원 조회
SELECT  *
FROM    employees
WHERE   HIRE_DATE >= str_to_date('06/01/1987','%m/%d/%Y')
AND     HIRE_DATE <= str_to_date('06/30/1987','%m/%d/%Y')
ORDER BY  hire_date;

--  5. Douglas Grant의 email 컬럼의 값을 'ERROR'로 수정하기
update employees
set email = 'ERROR'
where first_name = 'douglas' and last_name = 'grant';

-- select *
-- from employees
-- where first_name = 'douglas' and last_name = 'grant';

--  6. 부서명(부서명은 departments 테이블의 department_name)이 IT로 시작하는 부서에서 
-- 		근무하는 직원들의연봉값을 1.5배로 수정하기
update employees
set salary = salary * 1.5
where department_id in (select DEPARTMENT_ID 
						from departments 
						where DEPARTMENT_NAME like 'IT%');
    
-- (select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%');

-- 해결방법1
-- 아래와 같은 sql로 환경변수를 변경해준다. (일시적인 Safe모드 해제)
-- set sql_safe_updates=0;
-- 해결방법2
-- Workbench Preferences에서 안전모드(Safe mode)를 해제한다.
-- 아래의 그림에 있는 부분에서 체크를 해제한후에 다시 workbench를 시작한다.
-- (이렇게 하면 항상 Safe모드가 해제된 상태임)
-- [출처] [문제해결] You are using safe update mode|작성자 까만손오공
--  7. 적은 연봉순으로 5등(값은 값이 존재하면 동일 등수로 취급(DNESE_RANK)에 해당하는 4행의 직원의 연봉값을 기존값 + 1000으로 수정하기

-- 한번에 여러개의 레코드를 수정할때 뜨는 경고 해제
set sql_safe_updates = 0;

update employees
set salary = salary + 1000
where EMPLOYEE_ID in (	select A.`id`
						from (	SELECT EMPLOYEE_ID as 'id', DENSE_RANK() OVER (ORDER BY salary asc) as 'dense-rank'
								FROM employees) as A
						where A.`dense-rank` = 5);