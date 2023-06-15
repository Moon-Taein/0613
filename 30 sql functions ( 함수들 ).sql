select abs(-44); -- 절대값
select round(10.555, 1); -- 반올림
select ceil(10.555); -- 올림
select floor(10.555); -- 버림
select pow(2, 3); -- 제곱
select rand(); -- random

select trim('           abc          '); -- 좌우 공백 제거
select ltrim('              qwer'); -- 좌 공백 제거
select rtrim('zxcv                  '); -- 우 공백 제거

select upper('upper');
select lower('LOWER');

select concat('abc', 'def', 'ghi');
select reverse('abcde');
select replace('oooxxxooo', 'x' ,'A');
select substring('abcde', 2, 4); -- 2번째부터 4글자

select locate('.' , 'abc.def.ghi'); -- 문자열 위치 찾기
select locate('.' , 'abc.def.ghi', 5); -- 5번 부터 찾아라

-- if (조건, 참일때실행할거, 거짓일때실행할거);
select if(10 > 5, '참일때', '거짓일때');
-- strcmp ( a,b) 같으면 0 왼쪽크면 양수 오른쪽크면 음수
select if( strcmp('qwer', 'qwer') = 0, '같습니다', '다릅니다' );

select case when 10 > 5 
then '왼쪽은 오른쪽보다 크다'
else '왼쪽은 오른쪽보다 작다' end;

-- sql에서 1 true 0 false;
select case when 0 then '0이다'
	when 0 then '다음분기'
    else 'dddd' end;
    
select * from employees;

-- 1. 직원의 풀 네임(이름 + 성) 을 모두 대문자
-- 1-1. 직원의 이름결합값(첫글자 + 성)과 email 컬럼의 값이 같으면 '정상 이메일' 다르면 '잘못된 이메일'
select upper(concat(a.first_name, ' ' ,a.last_name)) as full_name
, if(strcmp(upper(concat(substring(first_name, 1, 1), last_name)), email) = 0, '정상이메일', '잘못된이메일') as `이메일 판별`
, a.EMAIL
, substring(a.phone_number, 1, locate('.', a.phone_number) -1) as pnum
, case when a.SALARY > 10000 then '높음'
	when a.salary < 10000 then '낮음'
    else '10000' end as `연봉`
from employees a;

-- 2. phone_number '.'을 기준으로 가장 앞 문자들
select substring(a.phone_number, 1, locate('.', a.phone_number) -1) as first_phone_number
from employees a;

-- 3. 연봉이 10000 이상이면 '높음', 미만이면 '낮음', '10000'
select a.first_name, a.LAST_NAME ,case when a.SALARY > 10000 then '높음'
	when a.salary < 10000 then '낮음'
    else '10000' end as `연봉`
from employees as a;