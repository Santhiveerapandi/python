-- SELECT * FROM classicmodels.employees;
-- how many orders were processed by each and every employee?
-- select
-- emp.employeeNumber,
-- count(cs.salesRepEmployeeNumber) as orders
-- from classicmodels.employees emp
-- Left join classicmodels.customers cs on emp.employeeNumber=cs.salesRepEmployeeNumber
-- group by 1 having count(cs.salesRepEmployeeNumber) >0;

select
emp.employeeNumber,
concat(emp.firstName, ' ',emp.lastName) as employeeName, 
SUM(IF (o.status='shipped', 1, 0)) as processed,
GROUP_CONCAT(o.orderNumber ORDER BY emp.employeeNumber) ordersdetail,
count(o.orderNumber) as all_orders
from classicmodels.employees emp
Left join classicmodels.customers cs on emp.employeeNumber=cs.salesRepEmployeeNumber
lms_migrationsLeft join classicmodels.orders o on o.customerNumber=cs.customerNumber
group by 1 having count(cs.salesRepEmployeeNumber) >0;

select
emp.employeeNumber,
concat(emp.firstName, ' ',emp.lastName) as employeeName,
count(cs.salesRepEmployeeNumber) as handlingcustomer
from classicmodels.employees emp
cross join classicmodels.customers cs on emp.employeeNumber=cs.salesRepEmployeeNumber
group by 1
order by 1 jobs asc

-- create schema `trigger`;

-- use `trigger`; 

create table employees(
Id int primary key,
E_Name varchar(100),
Salary int);

Create table Hiring(
Id int,
Hiring_time timestamp);
-- Q.Create a trigger to add hiring time whenever an employee gets added to employee table

create trigger Hiring_Time
after
insert on employees
for each row
insert into hiring values(new.Id, Now());


insert into employees values (1, "ABC", 100000);

select * from Hiring;

-- Q. create trigger to insert and update name of employee to upper case

create trigger update_name
before
update on employees
for each row
set new.E_name= upper(new.E_name);

create trigger update_name_i
before
insert on employees
for each row
set new.E_name= upper(new.E_name);

create table logs(
Id int,
E_name varchar(255));

create trigger logs
after
delete on employees
for each row
insert into logs values(old.Id,old.E_name);

create schema Group3
use group3
create table payments (
client_id int,
amount int not null
)

select * from payments
insert into payments (client_id, amount)
value (1, 100),
(2, null)

desc payments

delimiter //
create procedure `Payment` (cid int, amt int)
begin 
insert into payments values(cid, amt);
end //
delimiter ;
call payment (2, null);

create table fraud (
id int not null primary key,
client_id int,
message varchar (50),
Time_of_fraud datetime 
)

insert into fraud (id,client_id,message,Time_of_fraud)
value (1,1,"Fraud Transaction",now()),

select * from fraud
desc fraud 

drop procedure `Payment`

delimiter //
create procedure `Payment` (cid int, amt int)
begin 
declare continue handler for 1048
begin
insert into fraud(client_id, message,Time_of_fraud)
value (cid, "Fraud Transaction",now());
end;
insert into payments values(cid,amt);
select "Successful" as msg;
end //
delimiter ;

select * from fraud
