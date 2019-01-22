show tables;

use shop;

select * from member;
select * from product; 

delete from member where id = '500';

delete from bbs where id = '123';

insert into product values('100','100','iphone','6s plus');

create table bbs (
	id varchar(10) not null,
	title varchar(20) not null,
	content varchar(50),
	user varchar(100)
);

desc bbs;

select * from bbs; 

create table product (
	id varchar(10) not null,
	name varchar(20) not null,
	detail varchar(50),
	price varchar(100) not null
	);
	
	select * from product; 