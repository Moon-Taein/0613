insert into my_db.person (name, age) values ('새사람', 44);
select * from `my_db`.`person`;
select last_insert_id();

call usp_insert_person('돈까스덮밥', 4500);

