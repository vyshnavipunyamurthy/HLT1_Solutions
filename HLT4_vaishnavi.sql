create database vaishnavi;

use vaishnavi;

create table Manager(
Name varchar(100),
Shift varchar(100),
Salary double,
MID int primary key);

insert into manager(Name,Shift,Salary,MID) values('A','Day',30000,101);
insert into manager(Name,Shift,Salary,MID) values('B','Night',32000,102);
insert into manager(Name,Shift,Salary,MID) values('C','Day',39000,103);
insert into manager(Name,Shift,Salary,MID) values('D','Night',40000,104);
insert into manager(Name,Shift,Salary,MID) values('E','Day',39000,105);
insert into manager(Name,Shift,Salary,MID) values('F','Night',45000,106);
insert into manager(Name,Shift,Salary,MID) values('G','Day',44000,107);
insert into manager(Name,Shift,Salary,MID) values('H','Day',47000,108);
insert into manager(Name,Shift,Salary,MID) values('I','Night',49000,109);
insert into manager(Name,Shift,Salary,MID) values('J','Night',50000,110);

select *from manager;

create table item(
itemid varchar(100) primary key,
dish varchar(100),
price double,
category varchar(100));

 insert into item(itemid,dish,price,category) values('10','clearsoup',10.9,'soups');
 insert into item(itemid,dish,price,category) values('20','naan',3.9,'bread');
 insert into item(itemid,dish,price,category) values('30','coke',1.9,'beverages');
 insert into item(itemid,dish,price,category) values('40','jamun',10.9,'desserts');
 insert into item(itemid,dish,price,category) values('50','garlicnaan',3.0,'bread');
 insert into item(itemid,dish,price,category) values('60','cornsoup',2,'soups');
 insert into item(itemid,dish,price,category) values('70','fruitcustard',5.8,'desserts');
 insert into item(itemid,dish,price,category) values('80','kulcha',4.5,'bread');
 insert into item(itemid,dish,price,category) values('90','tea',1.5,'beverages');
 insert into item(itemid,dish,price,category) values('100','coffee',3.5,'beverages');

select * from item;

create table corder(
orderid int  auto_increment primary key,
cname varchar(100),
phone varchar(100),
address varchar(100),
itemid varchar(100) ,
qty int,
total double,
date varchar(100),
foreign key(itemid) references item(itemid)
 );

insert into corder(cname,phone,address,itemid,qty,total,date) values('A','7545467857','20','10',2,100,'2022-1-1'),
 ('B','8545467857','22','20',1,110,'2022-1-2'),
 ('c','9545467857','24','30',2,120,'2022-1-3'),
 ('D','7645467857','26','40',3,220,'2022-1-1'),
 ('E','7545467859','28','50',4,200,'2022-1-3'),
 ('f','7545767857','30','60',1,120,'2022-1-2'),
 ('G','7545460857','32','70',2,100,'2022-1-1'),
 ('H','7545467850','34','80',3,240,'2022-1-4'),
 ('I','7545467807','36','90',4,40,'2022-1-4'),
 ('J','7545467057','38','100',5,150,'2022-1-3');

select * from corder;

select avg(salary) from manager;

select count(orderid) as no_of_orders,date from corder group by date;

select sum(total) from corder;

select count(dish) as totai_no_of_dishes from item;

select category,dish from item order by category;






