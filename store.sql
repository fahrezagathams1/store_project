create database store;
use store;
create table users(
id int auto_increment primary key,
name varchar(100),
email varchar(100),
password varchar(255)
);

create table products(
id int auto_increment primary key,
name varchar(100),
price int,
stock int,
image text
);

create table order_items(
id int auto_increment primary key,
order_id int,
product_id int
);	

create table orders(
id int auto_increment primary key,
user_id int,
total int,
create_at timestamp default current_timestamp	
);	