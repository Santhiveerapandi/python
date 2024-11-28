-- 50 Practice Queries of Northwind Database
-- E:\projects\python\jupyter\ExcelR\DataAnalysis\guider\50 Northwind Practice Queries.pdf
use excelr_northwind;
-- 1. Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.
select CategoryName, Description from categories order by CategoryName;
-- 2. Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table sorted by Phone.
select ContactName, CompanyName, ContactTitle, Phone from customers order by Phone; 
-- 3. Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname respectively 
-- and HireDate from the employees table sorted from the newest to the oldest employee.
select upper(LastName)AS LastName, upper(FirstName) AS FirstName, HireDate from employees order by HireDate DESC;
-- 4. Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders 
-- table sorted by Freight in descending order.
select OrderID, OrderDate, ShippedDate, CustomerID, Freight from orders order by Freight Desc;
-- 5. Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.
select lower(CustomerID) as ID from customers;
-- 6. Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by 
-- the Country in descending order then by CompanyName in ascending order.
select CompanyName, Fax, Phone, Country, HomePage from suppliers order by Country desc, CompanyName asc;
-- 7. Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only
select CompanyName, ContactName from customers where lower(City) like 'buenos aires';
-- 8. Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.
select ProductName, UnitPrice, QuantityPerUnit from products where UnitsInStock <=0;
-- 9. Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.
select ContactName, Address, City from customers where Country not in ('Germany', 'Mexico', 'Spain');
-- 10. Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.
select OrderDate, ShippedDate, CustomerID, Freight from orders where OrderDate='1996-05-21';
-- 11. Create a report showing FirstName, LastName, Country from the employees not from United States.
select FirstName, LastName, Country from employees where Country not in ('USA');
-- 12. Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate 
-- from all orders shipped later than the required date.
select EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from orders where ShippedDate > CAST(RequiredDate as datetime);
-- 13. Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.
select City, CompanyName, ContactName from customers where City Like 'A%' OR City Like 'B%';
-- 14. Create a report showing all the even numbers of OrderID from the orders table.
select OrderID as even from orders WHERE OrderID % 2 = 0;
-- 15. Create a report that shows all the orders where the freight cost more than $500.
select * from orders where Freight > 500;
-- 16. Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for reorder.
select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel from products where UnitsInStock<=ReorderLevel;
-- 17. Create a report that shows the CompanyName, ContactName number of all customer that have no fax number.
select CompanyName, ContactName from customers WHERE Fax IS NULL;
-- 18. Create a report that shows the FirstName, LastName of all employees that do not report to anybody.
select FirstName, LastName from employees where ReportsTo is NULL;
-- 19. Create a report showing all the odd numbers of OrderID from the orders table.
select OrderID from orders where OrderID % 2 = 1;
-- 20. Create a report that shows the CompanyName, ContactName, Fax of all customers 
-- that do not have Fax number and sorted by ContactName
select CompanyName, ContactName, Fax from customers where Fax IS Null Order by ContactName;
-- 21. Create a report that shows the City, CompanyName, ContactName of customers 
-- from cities that has letter L in the name sorted by ContactName
select City, CompanyName, ContactName from customers where City like '%L%' order by 3;
-- 22. Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s.
select FirstName, LastName, BirthDate from employees where extract(YEAR FROM BirthDate) LIKE '195_';


use employees;
SELECT count(*) FROM employees.employees;
SELECT dept_no, count(*) no_of_employees FROM employees.current_dept_emp group by dept_no order by 1 LIMIT 0, 300024;