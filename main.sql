--DATA MODELING PORTION

departments
-
dept_no string
dept_name string

employees
-
emp_no PK int
birth_date date
first_name string
last_name string
gender varchar(1)
hire_date date

dept_emp
-
emp_no int FK >- employees.emp_no
dept_no string FK >- departments.dept_no
from_date date
to_date date

dept_manager
-
dept_no int FK >- departments.dept_no
emp_no int FK >- employees.emp_no
from_date date
to_date date

salaries
-
emp_no int FK >- employees.emp_no
salary int
from_date date
to_date date

title
-
emp_no int FK >- employees.emp_no
title string
from_date date
to_date date



--DATA ENGINEERING PORTION TO CREATE TABLES

-- Drop table if exists
DROP TABLE departments;
-- Create the players table
CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR,
);
-- Check data import
SELECT *
FROM departments;

DROP TABLE dept_emp;
CREATE TABLE dept_emp (
emp_no SERIAL PRIMARY KEY,
dept_no VARCHAR,
from_date DATE,
to_date DATE,
);
SELECT *
FROM dept_emp;


DROP TABLE dept_manager;
CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no SERIAL PRIMARY KEY,
from_date DATE,
to_date DATE,
);
SELECT *
FROM dept_manager;


DROP TABLE employees;
CREATE TABLE employees (
emp_no SERIAL PRIMARY KEY,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR(1)
hire_date DATE
);
SELECT *
FROM employees;


DROP TABLE salaries;
CREATE TABLE salaries (
emp_no SERIAL PRIMARY KEY,
salary INT
from_date DATE,
to_date DATE,
);
SELECT *
FROM salaries;


DROP TABLE titles;
CREATE TABLE titles (
emp_no SERIAL PRIMARY KEY,
title VARCHAR
from_date DATE,
to_date DATE,
);
SELECT *
FROM titles;




--DATA ANALYSIS PORTION AFTER CSV UPLOADS
