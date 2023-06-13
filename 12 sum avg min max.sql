SELECT SUM(SALARY) FROM employees;
-- SELECT SUM(SALARY) / COUNT(*) FROM employees;
SELECT AVG(SALARY) FROM employees;

-- department_id가 90인 직원들의 평균 salary와 행의 개수 조회
SELECT AVG(salary), COUNT(*) FROM employees WHERE department_id = 90;

SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

-- 최고 salary와 최소 salary의 차이 조회
SELECT MAX(salary) - MIN(salary) FROM employees;