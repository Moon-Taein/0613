show databases;
use world;
use sakila;
show tables;
desc country;
select code, name, SurfaceArea, Population from country;
select name, code, SurfaceArea, Population from country;
select * from country;

-- where 조건절 
select * from country where Continent = 'asia';
select *
	from country
    where continent = 'asia';
    
-- 국가명 'japan' 조회 (name, population, gnp)
select name, Population, GNP from country where name = 'japan';
-- 국가명 'china' 조회
select * from country where name = 'china';

