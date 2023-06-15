-- sql VIEW
create view fullViewEmployees
as
select a.EMPLOYEE_ID, a.FIRST_NAME, a.LAST_NAME, salary, b.DEPARTMENT_ID, b.DEPARTMENT_NAME
, c.LOCATION_ID, c.CITY
from employees a
left join departments b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
left join locations c on b.LOCATION_ID = c.LOCATION_ID;

-- view 도 where 사용해서 행 보고싶은거 보기 가능
select * 
from fullviewemployees
where department_id = 90;

-- view 조회 목적 ( 특정 db는 수정이 가능함 )
select * 
from fullviewemployees 
order by salary;



