select * from employees;
select count(*) from employees;
select sum(salary) from employees;

-- 일련의 쿼리를 마치 하나의 함수처럼 실행하기 위한 쿼리의 집합
call new_procedure();

-- session variable;
-- 
set @var1 := 0;
set @var2 := 0;

call new_procedure2(@var1, @var2);

select @var1, @var2;