-- 트랜젝션 (transaction)
-- 커밋 (commit) -- 변경사항 적용
-- 롤백 (rollback) -- 변경사항 원상태로 복원

select * from authors;

insert into authors (id, firstname, lastname) values (6, '논리삭제' , '김');
delete from authors where id = 6;