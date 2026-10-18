use world;
select * from city;
  -- multi row funtions
  select max(population) from city;
  select min(population) from city;
select sum(population) from city;
select count(population) from city;
select avg(population) from city;
-- aggregate function
select count(name) from city;
select count(distinct name) from city;
 select count(indepyear) from country;
--------
select count(name) from city where
district = 'noord-holland';

select district ,count(name) from city ; 
group  by district;
select count(continent) from country;
select count( distinct continent ) from country;
select continent , count(name) from country group by continent;
select count(name) from country;
select count( distinct name) from country;
select name ,count(name ) from country group by name;
select name from city

where population= (select max(population) from city);


--- get the sum of population for all the country along with any population for all the country

-- get the cum of popu. forn the country present in eroope
-- get the count of country present 'aise' africa
-- count the num. of ocuntry 
-- det the
-- get  tha total popu for country  present 


select sum(population), avg(population) from country;
select sum(population) from country 
where continent= 'eroope';
select count(name) from country 
where continent ='asia' or continent ='africa';

select count(name) from country where name like 'r%';

select max(population), min(population) from country group by region;

select continent , region ,sum(population) from country group by continent, region;

select continent ,count(name ) from country
group by continent having count(name)<10;


select * from country;

select continent , count(name)  from country where indepyear>=1900
group by continent;

-- got the indep year after 1900
-- and print only the continent where country count shoudle be gre

select continent , count(name)  from country where indepyear>=1900
group by continent
having continent>15;
show databases;
use regexschool;
show tables;
CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Dept VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
Gender CHAR(1) NOT NULL,
Salary INT NOT NULL,
JoinDate DATE NOT NULL,
Role VARCHAR(50) NOT NULL
);
INSERT INTO Employees (EmpID, Name, Dept, City, Gender, Salary, JoinDate, Role) VALUES
(1,'Alice','HR','New York','F',55000,'2019-03-15','Manager'),
(2,'Bob','IT','Chicago','M',72000,'2020-07-22','Developer'),
(3,'Carol','Finance','New York','F',68000,'2018-11-01','Analyst'),
(4,'David','HR','Chicago','M',52000,'2021-01-10','Executive'),
(5,'Eve','IT','Houston','F',85000,'2017-06-30','Senior Dev'),
(6,'Frank','Finance','New York','M',74000,'2019-09-14','Manager'),
(7,'Grace','Marketing','Chicago','F',60000,'2022-02-28','Executive'),
(8,'Hank','IT','Houston','M',90000,'2016-04-05','Lead'),
(9,'Ivy','HR','New York','F',58000,'2020-12-19','Executive'),
(10,'Jack','Finance','Chicago','M',65000,'2021-03-07','Analyst'),
(11,'Karen','Marketing','Houston','F',62000,'2018-08-23','Manager'),
(12,'Leo','IT','New York','M',78000,'2019-11-11','Developer'),
(13,'Mia','HR','Chicago','F',53000,'2022-05-16','Executive'),
(14,'Nate','Finance','Houston','M',71000,'2017-12-02','Manager'),
(15,'Olivia','Marketing','New York','F',66000,'2020-06-18','Analyst'),
(16,'Paul','IT','Chicago','M',82000,'2018-03-27','Senior Dev'),
(17,'Quinn','HR','Houston','F',57000,'2021-09-09','Executive'),
(18,'Rita','Finance','New York','F',76000,'2019-01-25','Lead'),
(19,'Sam','Marketing','Chicago','M',63000,'2022-07-14','Executive'),
(20,'Tina','IT','Houston','F',88000,'2016-10-31','Lead'),
(21,'Uma','HR','New York','F',60000,'2020-04-03','Manager'),
(22,'Victor','Finance','Chicago','M',69000,'2018-07-19','Analyst'),
(23,'Wendy','Marketing','Houston','F',64000,'2021-11-27','Manager'),
(24,'Xander','IT','New York','M',95000,'2015-02-14','Architect'),
(25,'Yara','HR','Chicago','F',54000,'2022-09-08','Executive'),
(26,'Zoe','Finance','Houston','F',73000,'2019-05-21','Manager'),
(27,'Aaron','Marketing','New York','M',67000,'2020-10-15','Analyst'),
(28,'Bella','IT','Chicago','F',80000,'2017-08-06','Senior Dev'),
(29,'Carlos','HR','Houston','M',56000,'2021-06-24','Executive'),
(30,'Diana','Finance','New York','F',77000,'2018-02-09','Lead');


select * from employees;

select dept , count(empid) as totelemployees from employees 
group by dept;


select dept , sum(salary) as totalsalary from employees 
group by dept order by totalsalary desc;

select city, avg(salary) from employees
group by city order by city;

select dept ,  max(salary) as MaxSalary from employees 
group by dept order by dept;


select dept ,  min(salary) as MinSalary from employees 
group by dept order by dept;


select dept ,  count(name) as EmpCount from employees 
group by dept order by dept;


select city, sum(salary) as TotelSalary from employees
group by city order by Totelsalary;

select name, dept ,salary from employees where dept = 'finance'
order by salary desc;

select name , city , joindate from employees where city ='chicago'
 and joindate <= '2021-03-07'
order by joindate;

select name , role , salary from employees
where role = 'analyst' order by salary;

select dept , avg(salary) as avgsalary from employees 
group by dept
having avgsalary>65000
order by avgsalary;

select city  , sum(salary) as totalsalary from employees 
group by city
having totalsalary >650000;

select dept , max(salary) as maxsalary from employees
group by dept
having maxsalary > 80000;

select role , count(role) from employees 
group  by role
 having count(role)>5
 order by role;
 
 select avg(salary) from employees ;
 
  
  SELECT dept, COUNT(gender) 
FROM employees 
WHERE gender = 'F' 
GROUP BY dept;
