-- delete 레코드
delete from person where name = '둘리';
select * from person;

-- 중복될 확률이 있는 조건으로 삭제하는 것보단
-- 고유한 값인 primary key를 이용하는게 좋다
delete from person where no = 11;

delete from person;

-- CRUD 워크벤치로 쉽게 가능