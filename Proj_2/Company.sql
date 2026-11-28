CREATE DATABASE company;

USE company;

CREATE TABLE employees(
emp_id INT PRIMARY KEY NOT NULL,
emp_name VARCHAR(50) NOT NULL,
department VARCHAR(100) NOT NULL,
salary INT CHECK(salary>0),
city VARCHAR(50));

INSERT INTO employees(emp_id, emp_name, department, salary, city)
VALUES
(101,'maneesh','IT',50000,'Hyderabad'),
(102,'Ajay','IT',60000,'Hyderabad'),
(103,'Sita','HR',40000,'Bangalore'),
(104,'Ram','HR',45000,'Hyderabad'),
(105,'Kiran','IT',55000,'Chennai'),
(106,'Neha','Sales',30000,'Hyderabad'),
(107,'Arun','Sales',35000,'Chennai'),
(108,'Pooja','HR','42000','Bangalore');

SELECT department,SUM(salary) FROM employees GROUP BY department; 

SELECT city, COUNT(emp_id) FROM employees GROUP BY city;

SELECT department, MIN(salary) FROM employees GROUP BY department;

SELECT department, MAX(salary) FROM employees GROUP BY department;

SELECT department, COUNT(emp_name) AS employees, AVG(salary) AS average_salary FROM employees GROUP BY department;

SELECT city, COUNT(emp_name), AVG(Salary) FROM employees GROUP BY city; 

SELECT city, MAX(salary) FROM employees GROUP BY city;

SELECT department, city, COUNT(emp_name) AS employees FROM employees GROUP BY department, city;

SELECT department, MAX(salary) AS maximum_salary,SUM(salary) AS total_salary, MIN(salary) AS minimum_salary, AVG(salary) AS average_salary, COUNT(emp_name) AS employee FROM employees GROUP BY department;