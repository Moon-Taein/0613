-- 함수 name(argument) 
select round(10 / 30, 1);

select concat('Hello', ' ' ,'World','~');
select concat('Hello', null ,'World', '~');

select ifnull(null, '대체값');
select ifnull(null, 50.555);

-- country 테이블 국가코드-국가명 조회
select concat(code, '-',name) from country;

-- 국가명, gnpold(null -> 0, 소수점 1자리수까지 )
select name, round(ifnull(gnpold, 0), 1) as gnpold from country order by gnpold asc;