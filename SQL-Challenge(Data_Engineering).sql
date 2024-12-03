-- SQL Queries below were used to setup the 6 databases form 
-- the CSV files provided for the assignment using primary key 
-- and foreign key. Also used NOT NULL condition on necessary 
-- columns.

Create Table departments (
    dept_no VARCHAR(4) Primary Key,
    dept_name VARCHAR(50) Not Null
);

Create Table employees (
    emp_no INTEGER Primary Key,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE
);

Create Table titles (
    title_id VARCHAR(10) Primary Key,
    title VARCHAR(50) Not Null
);

Create Table dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    Primary Key (emp_no, dept_no),
    Foreign Key (emp_no) References employees(emp_no),
    Foreign Key (dept_no) References departments(dept_no)
);

Create Table dept_manager (
    dept_no VARCHAR(4),
    emp_no INTEGER,
    Primary Key (dept_no, emp_no),
    Foreign Key (dept_no) References departments(dept_no),
    Foreign Key (emp_no) References employees(emp_no)
);

Create Table salaries (
    emp_no INTEGER Primary Key,
    salary INTEGER Not Null,
    Foreign Key (emp_no) References employees(emp_no)
);