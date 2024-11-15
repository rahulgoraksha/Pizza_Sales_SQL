create database pizzahut;

select * from pizzahut.pizzas;
select * from pizzahut.pizza_types;
select * from pizzahut.orders;
select * from pizzahut.order_details;
drop table orders_details;

create table orders(
order_id int primary key not null,
order_date date not null,
ordrr_time time not null);


create table orders_details(
order_details int not null primary key,
order_id int not null,
pizza_id int not null,
quantity int not null);