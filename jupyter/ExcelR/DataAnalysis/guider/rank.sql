/*create table rank_dense_rank_row_no.employee_details (
employee_id int not null primary key,
first_name char(25),
last_name char(25),
age int,
salary int);

insert into rank_dense_rank_row_no.employee_details(employee_id, first_name, last_name, age, salary)
values(1, "Sakshi", "Bhise", 22, 50000),
(2, "Mehul", "Oganiya", 25, 60000),
(3, "Aakash", "Barua", 23, 60000),
(4, "Ritika", "Biswas", 22, 65000),
(5, "Minal", "Garate", 21, 70000),
(6, "Priyam", "Vyas", 22, 70000),
(7, "Aashish", "Gupta", 24, 60000);

rank >> rank is calculated based on row counting but if the values are similar then it populates the same rank
dense_rank >> it is a consecutive ranking process but here as well if the values are similar then it populates the same rank
	
*/

-- SELECT
--   employee_id,
--   salary,
--   RANK() OVER (ORDER BY salary DESC) AS salary_rank,
--   DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_dense_rank,
--   row_number() OVER (ORDER BY employee_id DESC)AS row_no
-- FROM
--   rank_dense_rank_row_no.employee_details;

use excelr_northwind;


select CUSTOMERID,
ORDERDATE AS FIRST_ORDER_DATE,
LAG(ORDERDATE) OVER(ORDER BY ORDERDATE) AS SECOND_LAST_ORDER_DATE,
LAG(ORDERDATE,2) OVER(ORDER BY ORDERDATE) AS THIRD_LAST_ORDER_DATE
from excelr_northwind.orders
where customerid = "VINET"
ORDER BY 2 DESC
LIMIT 1;


SELECT CUSTOMERID,
ORDERDATE,
LAG(ORDERDATE) OVER (ORDER BY ORDERDATE) AS NEXT_ORDER_DATE
FROM ORDERS
ORDER BY 2 ASC;
-- ORDER BY 1,2


SELECT
  CustomerID,
  CompanyName,
  ContactName,
  LAG(CompanyName) OVER (ORDER BY CompanyName) AS previous_company,
  LEAD(CompanyName) OVER (ORDER BY CompanyName) AS next_company
FROM customers;


select * from employee_details
union 
select * from employee_details1;


-- >> VIEWS  >> SIMPLE VIEW, COMPLEX BVIEW
CREATE OR REPLACE VIEW CUSTOMER_VIEWS AS
(SELECT C.CUSTOMERID,
COMPANYNAME,
CONTACTNAME AS CUSTOMERNAME,
CONTACTTITLE,
ADDRESS,
COUNT(ORDERID) AS ORDER_COUNT
FROM CUSTOMERS c
LEFT JOIN ORDERS O ON O.CUSTOMERID  = C.CUSTOMERID
GROUP BY 1
);


-- question >> overall sales of each and every products ?

SELECT P.PRODUCTCODE,
PRODUCTNAME,
SUM(QUANTITYORDERED) * SUM(PRICEEACH)  AS OVERALL_SALES_AMOUNT
FROM PRODUCTS P
INNER JOIN ORDERDETAILS OD ON OD.PRODUCTCODE = P.PRODUCTCODE 
GROUP BY 1;


-- QUESTION >> HOW MANY ACTORS WORKED ON EACH AND EVERY MOVIE AND DISPLAY ONLY TOP 5 ACTORS BASED ON HIGHEST OF NUMBER OF MOVIES THEY DID?


CREATE VIEW Customer_Views AS
(SELECT CustomerID,
Companyname,
ContactName as CustomerName
FROM excelr_northwind.customers);

SELECT * FROM Customer_Views;



WITH RankedStates AS (
    SELECT State, SUM(NumberofTourist) AS TotalTourists,
           ROW_NUMBER() OVER (ORDER BY SUM(NumberofTourist) DESC) AS RowNum
    FROM Indian_Tourism
    GROUP BY State
    HAVING TotalTourists > 1000000
)
SELECT State, TotalTourists
FROM RankedStates
WHERE RowNum = 3;

use sakila;
WITH CTE AS (
select
a.actor_id,
concat(a.first_name, ' ', a.last_name) AS actor_name,
count(fa.film_id) AS movies_worked_on,
ROW_NUMBER() OVER (ORDER BY count(fa.film_id) DESC) AS RowNum
from actor a
join film_actor fa ON a.actor_id = fa.actor_id
group by a.actor_id, actor_name
order by movies_worked_on DESC)
SELECT * FROM CTE
WHERE RowNum = 3;


-- CTE is called common table expression
create or replace view cte_example as (
WITH CTE AS (
select
a.actor_id,
concat(a.first_name, ' ', a.last_name) AS actor_name,
count(fa.film_id) AS movies_worked_on,
ROW_NUMBER() OVER (ORDER BY count(fa.film_id) DESC) AS RowNum
from actor a
join film_actor fa ON a.actor_id = fa.actor_id
group by a.actor_id, actor_name
order by movies_worked_on DESC)
SELECT * FROM CTE
WHERE RowNum = 3);

use classic;
with cte as (
select cv.customerid,
order_count,
count(productid) as product_count
 from customer_views cv
 left join orders o on cv.customerid = o.customerid
 left join `order details` od on od.orderid = o.orderid
 group by 1)
select * from cte
where product_count > 50;

-- https://datalemur.com/questions/signup-confirmation-rate

with cte as (
select e.email_id,
count(e.email_id) as email_count
from emails e
group by email_id),
-- inner join texts t on e.email_id = t.email_id)
cte1 as (
select e.email_id,
count( e.email_id) as email_count_confirmed
from emails e
inner join texts t on e.email_id = t.email_id
where t.signup_action = 'Confirmed'
group by e.email_id)

select round(sum(email_count_confirmed)/sum(email_count),2)
from cte
left join cte1 on cte.email_id = cte1.email_id

-- teams who won 3 consecutive world cups? 
SELECT team, LAG(team) OVER (PARTITION BY team ORDER BY year) from world_cups;

-- set storage_engine = InnoDB;
-- mysql -u root -p employee < employees.sql