-- HR 데이터베이스 employees 테이블 연습
--  1. 부서(department_id) 그룹별 평균 연봉 조회하기
SELECT AVG(department_id) FROM employees; -- 평균을 구하는 함수.

--  2. 전체 연봉에 대해, 각 (개인별 연봉 / 전체 연봉) 비율을 계산해 조회하기
SELECT first_name ,last_name,salary,salary - ROUND((SELECT AVG(salary) FROM employees),
            1) AS 'gap'
FROM employees;

--  3. 본인이 속한 부서의 평균 연봉보다 높은 연봉을 가진 직원 조회하기
--    -> 별명이 있는 테이블의 특정 칼럼을 표현하는 법 : 테이블별명.컬럼이름
--    -> SELECT A.first_name FROM employees AS A;
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

--  4. 고용일(hire_date) 기준으로 1987-06-01 ~ 1987-06-30 범위 안에 고용된 직원 조회
SELECT  hire_date
FROM    employees
WHERE   HIRE_DATE >= TO_DATE('1987-06-01' , 'YYYY-MM-DD')
AND     HIRE_DATE <= TO_DATE('1987-06-30' , 'YYYY-MM-DD')
ORDER BY  hire_date;    

--  5. Douglas Grant의 email 컬럼의 값을 'ERROR'로 수정하기

--  6. 부서명(부서명은 departments 테이블의 department_name)이 IT로 시작하는 부서에서 
-- 		근무하는 직원들의연봉값을 1.5배로 수정하기

--  7. 적은 연봉순으로 5등(값은 값이 존재하면 동일 등수로 취급(DNESE_RANK)에 해당하는 4행의 직원의 연봉값을 기존값 + 1000으로 수정하기
SELECT * FROM employees ORDER BY DNESE_RANK DESC; 