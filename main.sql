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

-- Create the players table
CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR
);
-- Check data import
SELECT *
FROM departments;


CREATE TABLE employees (
emp_no SERIAL PRIMARY KEY,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR(1),
hire_date DATE
);
SELECT *
FROM employees;


CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR,
from_date DATE,
to_date DATE
);
SELECT *
FROM dept_emp;


CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT,
from_date DATE,
to_date DATE
);
SELECT *
FROM dept_manager;


CREATE TABLE salaries (
emp_no INT,
salary INT,
from_date DATE,
to_date DATE
);
SELECT *
FROM salaries;


CREATE TABLE titles (
emp_no INT,
title VARCHAR,
from_date DATE,
to_date DATE
);
SELECT *
FROM titles;




--DATA ANALYSIS PORTION AFTER CSV UPLOADS

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,e.first_name,e.last_name,e.gender,s.salary
FROM employees as e
LEFT JOIN salaries as s
ON s.emp_no =
e.emp_no;

-- 2. List employees who were hired in 1986.
SELECT *
FROM employees as e
Where e.hire_date >= '1/1/1996' and e.hire_date < '1/1/1997';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.



-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
