CREATE SCHEMA `roadbook` default character set utf8;
USE roadbook;
show databases;

create table roadbook.customers(
	id INT NOT NULL auto_increment,
    name varchar(20) NOT NULL,
    age INT unsigned not null,
    sex varchar(10) not null,
    joined_date datetime not null default now(),
    primary key(id)
)
default charset = utf8mb4
engine = InnoDB;

create table roadbook.purchase(
	id int not null auto_increment,
    customer_id int not null,
    book_name varchar(20) not null,
    purchase_date datetime not null default now(),
    primary key(id),
    foreign key(customer_id)
    references roadbook.customers(id)
    ON delete CASCADE
    ON update cascade
)
default charset = utf8mb4
engine = InnoDB;

insert into roadbook.customers(name, age, sex) values('홍길동', 30, '남');
insert into roadbook.customers(name, age, sex) values('이수진', 23, '여');
insert into roadbook.customers(name, age, sex) values('박민철', 21, '남');
insert into roadbook.customers(name, age, sex) values('이세라', 35, '남');
insert into roadbook.customers(name, age, sex) values('김유미', 46, '여');

select name, age from roadbook.customers;
select name, age from roadbook.customers where age > 29;

update roadbook.customers set age = 100 where id = 1;

delete from customers where id = 1;
select * from customers;