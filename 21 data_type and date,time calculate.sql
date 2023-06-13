-- 문자열
-- 고정 / 가변
-- Data Type	Storage Required
-- CHAR(M)	The compact family of InnoDB row formats optimize storage for variable-length character sets. See COMPACT Row Format Storage Characteristics. Otherwise, M × w bytes, <= M <= 255, where w is the number of bytes required for the maximum-length character in the character set.
-- BINARY(M)	M bytes, 0 <= M <= 255
-- VARCHAR(M), VARBINARY(M)	L + 1 bytes if column values require 0 − 255 bytes, L + 2 bytes if values may require more than 255 bytes
-- TINYBLOB, TINYTEXT	L + 1 bytes, where L < 28
-- BLOB, TEXT	L + 2 bytes, where L < 216
-- MEDIUMBLOB, MEDIUMTEXT	L + 3 bytes, where L < 224
-- LONGBLOB, LONGTEXT	L + 4 bytes, where L < 232
-- ENUM('value1','value2',...)	1 or 2 bytes, depending on the number of enumeration values (65,535 values maximum)
-- SET('value1','value2',...)	1, 2, 3, 4, or 8 bytes, depending on the number of set members (64 members maximum)

-- 정수, 실수
-- Data Type	Storage Required
-- TINYINT	1 byte
-- SMALLINT	2 bytes
-- MEDIUMINT	3 bytes
-- INT, INTEGER	4 bytes
-- BIGINT	8 bytes
-- FLOAT(p)	4 bytes if 0 <= p <= 24, 8 bytes if 25 <= p <= 53
-- FLOAT	4 bytes
-- DOUBLE [PRECISION], REAL	8 bytes
-- DECIMAL(M,D), NUMERIC(M,D)	Varies; see following discussion
-- BIT(M)	approximately (M+7)/8 bytes
-- -------------------------------------------------
-- Type	Blob Part Size
-- BLOB, TEXT	2000
-- MEDIUMBLOB, MEDIUMTEXT	4000
-- LONGBLOB, LONGTEXT	13948
-- JSON	8100

-- 날짜(시간)
-- YEAR	1 byte	1 byte
-- DATE	3 bytes	3 bytes
-- TIME	3 bytes	3 bytes + fractional seconds storage
-- DATETIME	8 bytes	5 bytes + fractional seconds storage
-- TIMESTAMP 4 bytes + fractional seconds storage

select current_date();
select current_time();
select current_timestamp();

-- select current_date() + 60;
select adddate(current_date(), 99);
select subdate(current_date(), 10);
select date_add(current_date(), interval 1 month); -- day, month, year
select date_sub(current_date(), interval 1 year); -- day, month, year

select datediff('2023-06-13', '2023-06-17');

select extract(year from '2023-06-13');
select extract(month from '2023-06-13');
select extract(day from '2023-06-13');

select dayofweek('2023-06-13'); -- 일요일 1, 월요일 2 ... 

select date '2023-06-13';
select time '12:00:00';

-- 형변환 ( type casting )
select cast('1' as signed) + 1;
select cast('2023-06-13' as date);

select convert('1', signed) + 1;
select convert('2023-06-13', date);

select date '2023/06/13' + interval 1 year;
-- formatting 
select str_to_date('06/13/2023','%m/%d/%Y');
select date_format('2023/06/13', '%y/%M/%D');


