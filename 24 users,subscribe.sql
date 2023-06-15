create table if not exists users (
	userno int auto_increment 
	, id varchar(15) unique not null
    , email varchar(30) unique not null
    , subid char(1)
    
    -- 제약 사항
    , primary key (userno)
    , foreign key (subid) references subscribe (id)
    -- subscribe (id) 구독테이블의 id 칼럼 = subscribe.id ??
);

create table if not exists subscribe(
	id char(1) 
    ,type varchar(5) not null
    , price int not null
	, primary key (id)
);


select * from subscribe;
select * from users;

insert into subscribe (id, type, price) values ('n', '일반', 10000)
 ,('p', '고급', 15000),('f', '무료', 0);
 
insert into users (id, email, subid) values ('bat', 'bat@bat', 'n'),
('super', 'super@super', 'p'), ('spider', 'spider@spider', 'n'), ('punisher', 'punisher@punisher', 'f');

create table owner (
	no int auto_increment
    , `사업자명` varchar(10) not null
    , `나이` int not null
    , `보유자금` int not null
    , primary key (no)
);

insert into owner (`사업자명`) values ('김그린'), ('박블루');

create table store ( 
	no int auto_increment
    , `상호명` varchar(20) not null
    , `사업자` int
    , primary key (no)
    , foreign key (`사업자`) references owner (no)
);

insert into store (`상호명`, `사업자`) values 
('그린피자', 1), ('블루치킨', 2);

create table menu (
	no int auto_increment
    , `메뉴명` varchar(15) not null
    , `가격` int not null
    , primary key (no)
);

select * from owner;
select * from store;
select * from menu;
select * from main_menu;
select * from store_menu;


-- select `상호명`, `사업자명` from owner, store
-- where owner.no = store.사업자;
-- select * from store_menu, store
-- where store.no = storeid;
select `상호명`, `사업자명`, (select `메뉴명` from menu where main_menu.mainmenuid = menu.no) as `주요메뉴`, `메뉴명`, `가격` 
from menu, store_menu, store, owner, main_menu
where store_menu.menuid = menu.no && store.no = store_menu.storeid && owner.no = store.사업자 && main_menu.storeid = store.no;

insert into menu (`메뉴명`, `가격`) values ('페퍼로니', 11000)
, ('치즈', 10000), ('불고기', 12000), ('하와이안', 13000) 
, ('후라이드', 11000), ('양념', 13000), ('간장치킨', 12500);  


create table store_menu (
	storeid int not null
    , menuid int not null
    , foreign key (storeid) references store (no)
    , foreign key (menuid) references menu (no)
);

insert into store_menu (storeid, menuid) 
values ( 1, 1), ( 1, 2), ( 1, 3), ( 1, 4), ( 2, 5), ( 2, 6), ( 2, 7);

create table main_menu(
	storeid int not null
    , mainmenuid int not null
    , foreign key (storeid) references store (no)
    , foreign key (mainmenuid) references menu (no)
);

insert into main_menu (storeid, mainmenuid) values (1,1), (2,7);

create table entire_store(
	no int not null auto_increment
    , `상호명` varchar(20) not null
    , `사업자명` varchar(10) not null
    , `주요메뉴` varchar(15)
    , `메뉴명` varchar(15)
    , `가격` int 
    , primary key (no)
    , foreign key (`상호명`) references store (`상호명`)
    , foreign key (`사업자명`) references store (`사업자`)
    , foreign key (`주요메뉴`) references main_menu (`mainmenuid`)
);
