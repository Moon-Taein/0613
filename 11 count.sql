SELECT DISTINCT JOB_ID FROM employees;
-- SELECT DISTINCT FIRST_NAME, LAST_NAME, JOB_ID FROM employees;

SELECT COUNT(*) FROM employees;

-- 조건절 포함된 집계
-- Last_Name이 A로 시작하는 직원 수
SELECT COUNT(*) FROM employees WHERE Last_Name LIKE 'A%';

-- 중복 제거 후 집계
SELECT COUNT(DISTINCT JOB_ID) FROM employees;

-- Department_id 중복 제거 후 행의 개수 집계
SELECT COUNT(DISTINCT DEPARTMENT_ID) FROM employees;

-- Salary가 10000 ~ 15000인 직원 행의 개수 집계
SELECT COUNT(*) FROM employees WHERE salary BETWEEN 10000 AND 15000;